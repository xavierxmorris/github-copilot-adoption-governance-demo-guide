[CmdletBinding()]
param(
    [switch]$Check
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

function Assert-Demo {
    param(
        [bool]$Condition,
        [string]$Message
    )
    if (-not $Condition) {
        throw "Synthetic demo validation failed: $Message"
    }
}

function Get-Percentage {
    param(
        [double]$Numerator,
        [double]$Denominator
    )
    if ($Denominator -eq 0) {
        return 'N/A'
    }
    return ('{0:0.0}%' -f (100 * $Numerator / $Denominator))
}

$fixturePath = Join-Path (Split-Path -Parent $PSScriptRoot) 'fixtures\synthetic-demo.json'
$data = Get-Content -LiteralPath $fixturePath -Raw | ConvertFrom-Json
Assert-Demo ($data.source_mode -like 'SYNTHETIC*') 'Fixture must be explicitly synthetic.'

$start = [datetime]::ParseExact($data.cohort.window_start, 'yyyy-MM-dd', [cultureinfo]::InvariantCulture)
$end = [datetime]::ParseExact($data.cohort.window_end, 'yyyy-MM-dd', [cultureinfo]::InvariantCulture)
Assert-Demo (($end - $start).Days -eq 27) 'Observation window must contain 28 inclusive days.'
$seats = @($data.cohort.seats)
Assert-Demo ($seats.Count -gt 0) 'Cohort cannot be empty.'
Assert-Demo (@($seats.user | Select-Object -Unique).Count -eq $seats.Count) 'Seat identifiers must be unique.'

$active = 0
$repeat = 0
$review = @()
foreach ($seat in $seats) {
    $assigned = [datetime]::ParseExact($seat.assigned_on, 'yyyy-MM-dd', [cultureinfo]::InvariantCulture)
    Assert-Demo ($assigned -le $start) 'The example requires a stable licensed cohort throughout the window.'
    $days = @($seat.observed_ide_days | Select-Object -Unique)
    foreach ($day in $days) {
        $date = [datetime]::ParseExact($day, 'yyyy-MM-dd', [cultureinfo]::InvariantCulture)
        Assert-Demo ($date -ge $start -and $date -le $end) "Observation outside window for $($seat.user)."
    }
    if ($days.Count -ge 1) { $active++ }
    if ($days.Count -ge 2) { $repeat++ }
    if ($days.Count -eq 0) { $review += $seat.user }
}

$generated = [double]$data.completion_slice.generated
$accepted = [double]$data.completion_slice.accepted
Assert-Demo ($generated -ge 0 -and $accepted -ge 0 -and $accepted -le $generated) 'Invalid completion counters.'

$bill = $data.billing_example
$included = $bill.business_seats * $bill.business_included_credits_per_seat +
    $bill.enterprise_seats * $bill.enterprise_included_credits_per_seat
$seatCharge = $bill.business_seats * $bill.business_list_price_usd +
    $bill.enterprise_seats * $bill.enterprise_list_price_usd
$overage = [math]::Max(0, $bill.consumed_credits - $included) * $bill.usd_per_credit

if ($Check) {
    Assert-Demo ($seats.Count -eq 8 -and $active -eq 6 -and $repeat -eq 4 -and $review.Count -eq 2) 'Unexpected cohort counts.'
    Assert-Demo ((100 * $active / $seats.Count) -eq 75) 'Expected 75 percent observed utilization.'
    Assert-Demo ([math]::Round(100 * $repeat / $active, 1) -eq 66.7) 'Expected 66.7 percent repeat engagement.'
    Assert-Demo ((100 * $accepted / $generated) -eq 40) 'Expected 40 percent completion acceptance.'
    Assert-Demo ($included -eq 190000 -and $seatCharge -eq 1900 -and $overage -eq 200) 'Unexpected separate billing example.'
    Assert-Demo ((Get-Percentage 0 0) -eq 'N/A') 'Zero denominator must be N/A.'
    Assert-Demo ([math]::Max(0, 100000 - $included) -eq 0) 'Usage below the pool must not produce negative overage.'
    Write-Output 'PASS: synthetic fixture, 28-day bounds, cohort, ratios, N/A and separate billing arithmetic.'
    return
}

Write-Output $data.source_mode
Write-Output "Reference checked: $($data.schema_checked_on)"
Write-Output ''
Write-Output "ADOPTION SCOPE: $($data.cohort.scope)"
Write-Output "Window: $($data.cohort.window_start) through $($data.cohort.window_end) (inclusive, UTC dates)"
Write-Output "Eligible stable seats: $($seats.Count)"
Write-Output "Observed IDE-active users: $active"
Write-Output "Observed utilization: $(Get-Percentage $active $seats.Count)"
Write-Output "Repeat engagement (2+ distinct days / active users): $repeat/$active = $(Get-Percentage $repeat $active)"
Write-Output "Completion acceptance (same feature slice): $accepted/$generated = $(Get-Percentage $accepted $generated)"
Write-Output "Coverage: $($data.cohort.coverage)"
Write-Output ''
Write-Output "HUMAN REVIEW SUGGESTED ($($review.Count) seats; no cancellation performed):"
foreach ($user in $review) {
    Write-Output "  $user - no IDE observations in this fixture; check coverage, other surfaces, onboarding and leave."
}
Write-Output ''
Write-Output "SEPARATE BILLING EXAMPLE: $($bill.scope)"
Write-Output "Included credits: $included; consumed: $($bill.consumed_credits)"
Write-Output ('Seat list-price estimate: USD {0:0.00}' -f $seatCharge)
Write-Output ('Overage estimate: USD {0:0.00}' -f $overage)
Write-Output ('Seat + overage estimate: USD {0:0.00}' -f ($seatCharge + $overage))
Write-Output $bill.qualification
Write-Output ''
Write-Output 'Usage is not causal productivity, a compliance verdict or audited ROI. Missing data is not zero use.'
