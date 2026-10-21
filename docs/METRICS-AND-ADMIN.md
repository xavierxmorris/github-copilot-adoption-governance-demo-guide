# Usage, reporting, cost and administration

**Checked 2026-10-21.** Treat entitlement, usage and billing as separate datasets. This kit performs no tenant API calls.

## Access and reporting prerequisites

Current usage dashboards and replacement report APIs are **GA**. Dashboard roles include enterprise owners/billing managers, organization owners and applicable custom metrics-viewer roles. The dashboard requires enabled usage metrics; the REST introduction says the enterprise policy must be **Enabled everywhere**. Verify actual scope/entitlement rather than assuming those descriptions are identical. [M01](SOURCES.md#m01), [M03-M05](SOURCES.md#m03)

| Resource | Documented access | Documented OAuth/classic PAT scope |
|---|---|---|
| Enterprise reports | Enterprise owner, billing manager or custom View Enterprise Copilot Metrics role | `manage_billing:copilot` or `read:enterprise` |
| Organization reports | Org owner or custom View Organization Copilot Metrics role | `read:org` |
| Organization seat inventory | Org owner | `manage_billing:copilot` or `read:org` |

Role authorization and token permissions are separate checks. Do not infer App/fine-grained-token support from the phrase custom fine-grained **role**. Endpoint-specific supported-token documentation must be checked before an integration. [M01](SOURCES.md#m01), [M09](SOURCES.md#m09)

Documented enterprise navigation: **Insights -> Copilot usage**. Current minimum reporting versions include VS Code 1.107.1 and Copilot Chat 0.35.3; other clients have separate requirements. Billing-display minimum versions are a different requirement. [M03-M05](SOURCES.md#m03), [M11](SOURCES.md#m11)

## Current API templates

Documentation-derived read-only templates below are **not executed by this kit**. Use an approved account, scope and private destination. Current fetched examples use `Accept: application/vnd.github+json` and `X-GitHub-Api-Version: 2026-03-10`. Never print authentication headers.

| Report | Enterprise path | Organization path |
|---|---|---|
| Aggregate daily | `/enterprises/{enterprise}/copilot/metrics/reports/enterprise-1-day?day=2026-10-16` | `/orgs/{org}/copilot/metrics/reports/organization-1-day?day=2026-10-16` |
| Aggregate latest 28 days | `/enterprises/{enterprise}/copilot/metrics/reports/enterprise-28-day/latest` | `/orgs/{org}/copilot/metrics/reports/organization-28-day/latest` |
| Users daily | `/enterprises/{enterprise}/copilot/metrics/reports/users-1-day?day=2026-10-16` | `/orgs/{org}/copilot/metrics/reports/users-1-day?day=2026-10-16` |
| Users latest 28 days | `/enterprises/{enterprise}/copilot/metrics/reports/users-28-day/latest` | `/orgs/{org}/copilot/metrics/reports/users-28-day/latest` |
| Daily user/team membership | `/enterprises/{enterprise}/copilot/metrics/reports/user-teams-1-day?day=2026-10-16` | `/orgs/{org}/copilot/metrics/reports/user-teams-1-day?day=2026-10-16` |
| Daily repository PR activity | `/enterprises/{enterprise}/copilot/metrics/reports/repos-1-day?day=2026-10-16` | `/orgs/{org}/copilot/metrics/reports/repos-1-day?day=2026-10-16` |

All are `GET`. Source: [M01](SOURCES.md#m01). A daily response envelope has this shape:

```json
{
  "download_links": ["https://example.invalid/placeholder-not-a-real-signed-url"],
  "report_day": "2026-10-16"
}
```

Latest-28-day envelopes instead identify `report_start_day` and `report_end_day`. Download **all** returned files and parse NDJSON. The URLs are time-limited and potentially sensitive; never publish, log or construct them yourself. An exact signed-link TTL was not established. Re-request the report after expiration.

Do not add guessed `since`/`until` filters. Use documented daily reports for custom windows. The legacy `/copilot/metrics` API family had an announced **2 April 2026** sunset; the replacement's January preview wording was superseded by February GA. This does not retire all `/copilot/billing`, seat or billing-usage APIs. [M02-M03](SOURCES.md#m02)

Seat/billing templates:

```http
GET /orgs/ORG/copilot/billing
GET /orgs/ORG/copilot/billing/seats?per_page=100&page=1
GET /orgs/ORG/members/USERNAME/copilot
GET /organizations/ORG/settings/billing/ai_credit/usage?year=2026&month=10
GET /enterprises/ENTERPRISE/settings/billing/ai_credit/usage?year=2026&month=10
```

Seat listing defaults to 50, maximum 100 per page; follow complete pagination. The seat-management endpoints and `last_activity_at` retain preview labels. Organization AI-credit billing uses **`/organizations/`**, not `/orgs/`. Billing history supports the past 24 months. [M09-M10](SOURCES.md#m09), [M12](SOURCES.md#m12)

## Clocks, attribution and missing data

| Issue | Interpretation |
|---|---|
| Usage freshness | Official concepts say two full UTC days; how-to/reconciliation say three. Use mature dates, allow three conservatively and display bounds; this is not an SLA. |
| Enterprise report history | Daily reports documented from 10 Oct 2025 and up to one year. Rolling retention still applies. Do not infer an identical organization guarantee from that sentence. |
| Organization analytics | Membership-based; start date documented 12 Dec 2025. A licensing-shell org is not a complete analytics boundary. |
| Organization/team totals | One user can appear in multiple orgs/teams. Never sum these as enterprise distinct users or use them as invoice allocation. |
| Team join | Join daily user usage and daily membership on `(user_id, day, organization_id)` or enterprise equivalent before rolling up. Do not apply today's membership to the full historical window. |
| Team threshold | User-teams reports omit teams below five **seated Copilot users**. This is not a blanket five-active-user rule for all new reports. |
| Seat activity | Up to 24-hour processing; receiving a suggestion can qualify. Last authentication is not productive use. |
| Activity retention | Rolling 90 days; `last_activity_at` can become null. Null is not proof of never using Copilot. |
| Surface coverage | IDE-based active users differ from separately reported CLI usage. GitHub.com Chat/Mobile are outside this usage-metrics coverage; other activity reports can see different surfaces. |
| Missing dimensions | Server signals may count an active user despite empty IDE breakdowns. Unsupported clients/telemetry gaps matter. Optional/null fields are not automatically zero. |
| Monthly label | API MAU is trailing 28 days; some dashboard monthly descriptions use calendar month. Show the actual dates. |

Sources: [M04-M10](SOURCES.md#m04). Per-user reports contain identifiable `user_id`/`user_login`; apply access controls, retention limits and applicable employee/privacy consultation. Do not put them in this public kit.

## Metric definitions

These are **kit definitions**, not claims that every GitHub dashboard uses the same formulas.

| Measure | Formula / interpretation |
|---|---|
| Seven-day activation | Newly assigned users with first observed qualifying use within seven days / new users with a complete seven-day follow-up. Requires historical first-use observations, not current last activity. |
| Observed 28-day utilization | Distinct observed-active licensed users / eligible licensed cohort with matching scope/window. |
| Repeat engagement | Users observed on at least two different days / users observed on at least one day in the same window. |
| Completion acceptance | Sum accepted / sum generated **in the same completion feature slice**. No denominator => N/A. Do not average percentages or mix chat/completions. |
| IDE-agent adoption | Distinct IDE-agent users / matching active population. Not cloud-agent usage or an automatically equivalent native adoption cohort. |
| Cost per observed-active user | Same-period attributable cost / same-period distinct observed-active users. Cost efficiency, not ROI. |

The offline fixture uses a **derived kit model**, not a raw API export: `observed_ide_days`, `completion_slice` and `billing_example` are deliberately separate. The eight-seat denominator is stable throughout its 28-day observation window. Two seats without observed IDE use become a review queue, not an automatic removal decision.

## Current corporate billing: do not use old premium-request arithmetic

| Item | Published standard on 21 Oct 2026 |
|---|---|
| Business | $19 per seat/month; 1,900 included AI credits per assigned seat |
| Enterprise | $39 per seat/month; 3,900 included AI credits per assigned seat |
| Conversion | 1 AI credit = $0.01 USD |
| Pool | Billing-entity pool, not isolated individual allowances |
| Reset | First calendar day, 00:00 UTC; no carryover |
| Additional usage | Enabled by default per current corporate billing docs; inspect actual stop controls |
| Completions/next edit suggestions | Included on paid plans without AI-credit charges |

Sources: [M11-M14](SOURCES.md#m11). Actual negotiated prices, currency, tax and contract apply. Seat changes can change the pool; use actual billing rather than a static-seat formula.

The June-August 2026 promotion is expired for this October demo. Existing annual personal Pro/Pro+ request-based exceptions are not the current Business/Enterprise model. Premium-request billing-report endpoints still exist; their existence is not evidence that corporate plans retain old allowances. [M12-M15](SOURCES.md#m12)

**Separate worked calendar-month example:** 100 stable Business seats => 190,000 included credits and $1,900 list-price seat charge. Invented consumption of 210,000 credits => 20,000-credit excess => **$200 estimated overage**, before adjustments. Estimated seat + overage total = $2,100, excluding Actions/other costs. Do not add the value of included credits again.

User-level budgets cover included plus additional consumption; org/enterprise/cost-center overage controls operate differently after the pool is exhausted. A zero-dollar user budget can block immediately. A budget notification is not automatically a hard stop; inspect the configured control. Exhaustion does not imply automatic cheaper-model fallback. [M11](SOURCES.md#m11)

Code review can incur **both AI credits and Actions minutes**. Usage-report `ai_credits_used` is for consumption analysis, not invoices; reconcile billed cost using billing net amounts. [M06](SOURCES.md#m06), [M14](SOURCES.md#m14)

## Administration action loop

Weekly: confirm access/telemetry coverage -> review adoption and support barriers -> offer enablement -> review exceptions/spend -> human-review possible seat changes. Monthly: reconcile billing, compare delivery-quality signals and feedback, renew exceptions and evaluate rollout expansion.

Before reclaiming a seat, check assignment age, onboarding, leave, pending cancellation, retention, client support, telemetry and other surfaces. No automatic deletion/revocation code belongs in this demo.

Dashboard potential ROI estimates, acceptance and generated code do not establish causal productivity or audited savings. Pair adoption with representative baseline measures, review quality, rework/defects and voluntary feedback. [M04](SOURCES.md#m04), [A01-A02](SOURCES.md#a01)
