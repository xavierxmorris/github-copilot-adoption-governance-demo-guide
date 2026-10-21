# Consolidated research and implementation rationale

**Research date: 2026-10-21.** Scope: GitHub Copilot governance/guardrails first, usage/reporting/administration second, security/compliance/auditability third; a reusable 30-minute demonstration and discovery kit.

## Method and evidence

Two bounded research tracks used **max reasoning effort**: governance/security and reporting/administration. They fetched official GitHub pages and corresponding public `github/docs` source files. Separate adoption research used Context7 discovery followed by full official tutorials. This guide uses public evidence only.

This verifies documentary claims, not the recipient's tenant configuration or client enforcement. No tenant settings, audit records, usage exports or secrets were accessed. The [source register](SOURCES.md) maps substantive claims to current references and historical announcements.

The [click-by-click follow-up](../GITHUB-STEP-BY-STEP.md) rechecks current navigation and separates on-stage inspection from owner-approved preparation. Additional bounded reporting/admin and agent/audit research calls requested **max** effort; workers cannot independently inspect the runtime effort selector. Current primary procedures take precedence over inferred menus, stale examples or unavailable marketing-page rendering.

## Principal findings

| Finding | Why it changes the demo |
|---|---|
| Policy scope follows licensed accounts with documented repository exceptions | Show effective inheritance and identity boundaries rather than a broad "enterprise controls everything" promise. |
| Model/feature defaults can change rollout behavior | Inspect explicit decisions and date-sensitive defaults before talking about guardrails. |
| Managed MCP allow/deny restrictions supersede registry-only restriction as preferred approach | Do not build the central tool-trust story around a preview registry alone. |
| Instructions and content exclusion have important enforcement limits | Pair guidance with actual permissions/checks; state unsupported/uncertain surfaces. |
| Agents add execution, credential and workflow risk | Use an existing PR/evidence chain and actual configurable gates, not a fresh coding stunt. |
| Reporting APIs, credit billing and contract language changed during 2026 | Avoid common outdated demos built around legacy metrics, premium requests and archived terms. |
| Audit/usage/session/billing are different evidence | Explain what each can prove, its access/retention, and what is missing. |
| Adoption does not establish causal productivity or compliance | Close on a bounded measured pilot with human review, not an unsupported ROI claim. |

## Conflicts, transitions and unresolved questions

| Topic | Official evidence | Presentation rule |
|---|---|---|
| **New-feature default activation** | G03: configurable on 21 Oct; begins activation **22 Oct 2026** | State announced future date on research date. Recheck after activation. Do not confuse it with active released-model defaults. |
| **CLI content exclusion** | G07 support table and G27 CLI administration say supported; G08 says CLI unsupported | Treat coverage unverified for compliance. Obtain clarification and test exact client. No bypass test or universal DLP promise. |
| **Agent secrets/workflow approval** | G11 application card uses older/categorical wording; G12/G13 describe Agents migration and configurable approval | Prefer current dedicated configuration how-tos; inspect actual settings. |
| **MCP mechanisms** | G06 preview registry restriction no longer recommended; G05 managed allow/deny approach preferred/GA | Explain built-in exceptions and actual managed-client deployment. Do not combine conflicting policies blindly. |
| **Usage freshness** | M04: two full UTC days; M05/M07: three | Use a mature window, conservatively allow three and disclose conflict. No SLA claim. |
| **Metrics policy prerequisites** | Dashboard says enabled; REST introduction says enterprise Enabled everywhere | Verify actual role/policy/scope before live reporting; fallback is unavailable, not zero. |
| **Organization dashboard route** | M05 documents the enterprise route; organization dashboard availability does not establish its exact clicks | Use verified enterprise navigation, an independently preverified organization route or the synthetic/API fallback. Do not invent an organization breadcrumb. |
| **Metrics preview/GA** | M02 January replacement-preview wording; M03 February GA | Use GA for current replacement usage reports; seat/activity preview labels remain distinct. |
| **Legacy API retirement** | M02 announced March/April 2026 retirements | Use replacement reports. Exact HTTP behavior of old routes was not tested. |
| **Billing transition** | M11 current corporate pools; M13 expired June-August promotion; M15 personal annual-plan exception | Use current corporate credits and date/contract-qualified examples. |
| **Terms transition** | G20 deprecated from 5 Mar 2026 for new/renewed subscriptions; G17 March replacement | Do not reuse old universal real-time-deletion promises. Counsel confirms applicable agreement. |
| **Enterprise-teams model mode** | W01: opt-in preview deactivates organization-level model settings | Inspect the existing mode before using an org Models-page demonstration; do not switch modes. |
| **Managed-policy cold start** | W02: CLI server-policy retrieval failure with no cache can leave that policy unavailable for the session | Do not generalize cached-policy preservation into an unconditional fail-closed/offline guarantee. Check required deployment coverage. |
| **Managed control coverage** | G24/G26 distinguish supported clients from per-key/harness/minimum-version support | A valid file or absent validator warning does not prove delivery. Do not extrapolate local permissions/sandbox/MCP keys to cloud agent. |
| **CLI local BYOK** | G27 says locally supplied LLM keys are not controlled by enterprise policies | Do not describe GitHub-provided model availability as a universal endpoint/data-egress restriction. Assess the other data path separately. |
| **Budget coverage** | W08: cost-center exclusions, included-usage controls and distinct stop behavior affect coverage | Inspect applicable budgets and stop configuration; an enterprise limit is not automatically an all-cost ceiling. |
| **Reporting versus billing UI** | M16 documents **Billing & Licensing -> Usage -> AI usage**; M05 documents **Insights -> Copilot usage** | Consumption, entitlement and adoption are different views. Organization billing owners do not inherit the enterprise's direct user-filter capability. |

## Alternatives considered

| Approach | Benefit | Risk | Decision |
|---|---|---|---|
| Make all policy changes live | Visually immediate | Production impact, propagation, permissions and unintended broad scope | Reject for 30-minute session. Read-only inspection only. |
| Launch a cloud-agent task live | Shows generation | Variable latency, cost and potentially unsafe changes obscure governance | Pre-stage a PR and inspect evidence. |
| Require enterprise/API access | Real tenant evidence | Audience may lack permissions; exports can disclose employee/customer data | Optional approved live mode, always a synthetic fallback. |
| Build a dashboard/application | Visual polish | Dependencies and model/schema maintenance distract from the requested decision | Dependency-free PowerShell walkthrough and reusable slide outline. |
| Automatically reclaim apparently inactive seats | Immediate administration action | Missing telemetry/retention/leave can cause wrongful removal | Human-review queue only. |
| Present potential ROI as proven savings | Executive-friendly headline | Unsupported causal/financial conclusion | Separate directional estimates from measured outcomes. |

## Selected implementation

Eight timeboxed stops totaling exactly 30 minutes, with 15 minutes of governance and guardrails, seven of reporting/administration, four of security/audit, and four of framing/decisions. Questions are embedded so discovery happens during the demo.

The offline fixture is an explicitly **derived kit model**, not a mock GitHub API response. It contains fictional users, observed IDE dates, a coherent completion slice and a separate billing example. The script computes rather than hardcodes displayed results; `-Check` verifies the example invariants and expected arithmetic.

The walkthrough's fourteen numbered feature/decision sections fit those same eight timeboxes. Supporting settings are prepared before the session; they are not fourteen additional live demos. Optional exclusion setup uses harmless text, a non-excluded comparison and exact client/mode evidence rather than a secret-disclosure exercise.

## Limits and next validation

- Exact supported-client managed-policy behavior and all multi-license exceptions were not exhaustively tested.
- Signed report-link numeric lifetime was not established; only time-limited behavior is asserted.
- Optional/report rollout fields and actual tenant entitlements can vary; consult endpoint-specific docs.
- Session links do not establish an immutable indefinite transcript-retention commitment.
- Legal eligibility, assurance reports and customer-specific data paths require private follow-up.
- Rehearse with actual authorized browser tabs and a timer before customer delivery.

Non-goals: change live policies, run security attacks, make legal determinations, claim real tenant configuration, purchase usage, or alter existing learning repositories.
