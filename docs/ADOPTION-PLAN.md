# A bounded adoption pilot

This is a recommended operating model, informed by GitHub's [trial measurement](SOURCES.md#a01) and [team agentic adoption](SOURCES.md#a02) tutorials. A two-week activation sprint gives early usage signals, **not** proof of long-term productivity or cost impact.

## Ownership

| Owner | Accountable for |
|---|---|
| Sponsor / engineering lead | Outcomes, representative cohort and scale/pause decision |
| Enterprise/platform administrator | Effective policy, identity/license/repo scope and emergency disablement |
| Security/privacy/legal | Data-flow and contract assessment, tools/credentials, incident response and evidence |
| Developer enablement / champions | Setup, approved workflows, training and barrier resolution |
| Metrics/privacy owner | Cohort definitions, data access/retention, quality of interpretation |
| Billing owner | Included pool, actual spend, stop behavior and reconciliation |
| Repository maintainers | Review, checks, workflow approval and artifact quality |

## Before activation

Choose a representative established team, not only enthusiasts. Identify two or three useful approved workflows, a stable outcome baseline and the required human review/testing. Check licensing/policy scope before enabling anything: an organization-level feature decision can affect everyone licensed there, not only the pilot team.

Confirm clients/managed settings, data restrictions, tool access, credential scope, approved repositories, audit/evidence retention and privacy consultation. Set an actual spend limit with intended stop behavior; appoint someone who can pause the rollout.

## Two-week activation sprint

| Stage | Action | Evidence / decision |
|---|---|---|
| Before day 1 | Baseline suitable delivery/quality measures; verify setup and guardrails | Readiness checklist and unresolved blockers |
| Week 1 | Demonstrate approved work, pair on a low-risk task, remove setup barriers | Actual completed examples and support issues |
| Week 2 | Repeat useful workflows in normal work; address context/trust/tool problems | Distinct usage days, feedback, review/rework and spend checks |
| End of week 2 | Compare activation and early outcomes; inspect safety/quality/cost | Repeat, redesign, pause or cautiously expand |
| Following billing cycles | Continue observation with consistent definitions and actual billing | Defensible longer-term decision, not extrapolated two-week savings |

Example **proposed** activation target: participants use an approved app/CLI workflow on at least three separate days in each week. Negotiate a realistic target; it is not a contractual benchmark. Use daily per-user reports and the documented `used_cli`/`used_copilot_app` fields where available; join team membership daily. Do not substitute an overall 28-day adoption cohort for this specific sprint target. [A02](SOURCES.md#a02)

Pair activity with an outcome such as time to first reviewable PR, maintenance-task completion or investigation time, while preserving review quality and checking defects/rework. Differences in workload/staffing affect comparisons; use developer feedback and avoid attributing every change to Copilot.

## Stop and pause conditions

Recommended conditions: unintended policy/repository/data scope, credential exposure, repeated unsafe output or failed review quality, unavailable required evidence, unapproved model/tool use, or spending approaching an agreed limit without effective stop controls.

Record who can disable the feature, revoke a credential, preserve evidence and coordinate incident/privacy response. Do not disable protections to reach an adoption target.

## Decision record

Copy into an approved **private** system, not into this public repository:

```text
Decision / review date:
Sponsor / accountable pilot owner:
Enterprise / licensing scope:
Cohort and eligibility window:
Approved workflows / repositories / data classes:
Prohibited workflows / unresolved blockers:
Effective policy and managed-client coverage evidence:
Models / previews / MCP / credential approvals:
Required review, tests and workflow approval:
Exception owner / expiry:
Adoption definitions / quality baseline / feedback method:
Metrics viewers / employee-data retention:
Billing entity / included pool / spend stop behavior:
Audit/evidence owner / retention destination:
Pause conditions / disable authority / incident route:
Expand, repeat, redesign, pause or stop:
```
