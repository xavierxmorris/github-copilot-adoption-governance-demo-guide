# Official source register

**Retrieved 2026-10-21.** GitHub documentation is continuously updated and does not always expose a stable publication date; retrieval date is used in those cases. Dated announcements are historical evidence, not a substitute for current product reference. Source research included rendered official pages and authored `github/docs` files. No private tenant material was used.

Each entry identifies the claim it supports so presenters can recheck the exact boundary, not just the product home page.

## G01

[GitHub Copilot policies for enterprises and organizations](https://docs.github.com/en/copilot/concepts/enterprise/policies)

Policy precedence, licensing scope, existing individual-subscription cancellation, multi-license qualified rules and repository-wide cloud-agent exceptions.

## G02

[Managing policies for Copilot in your organization](https://docs.github.com/en/copilot/how-tos/administer-copilot/manage-for-organization/manage-policies)

Org-owner controls, inherited restrictions, preview/partner-agent distinctions. Business/Enterprise prerequisites.

## G03

[Default availability of Copilot features and models](https://docs.github.com/en/copilot/concepts/enterprise/default-availability)

**Date-sensitive:** feature-default activation starts **22 October 2026**; configurable but not active on retrieval date. Distinct model default and autoenablement exclusions.

## G04

[Managing policies for Copilot in your enterprise](https://docs.github.com/en/copilot/how-tos/administer-copilot/manage-for-enterprise/manage-enterprise-policies)

Enterprise control prerequisites, public-code policy/default and third-party MCP-host scope note.

## G05

[Configuring an enterprise MCP allowlist](https://docs.github.com/en/copilot/how-tos/administer-copilot/manage-mcp-usage/configure-enterprise-allowlist)

Managed `allowedMcpServers`/`deniedMcpServers`, built-in-server exception, policy evaluation and deployment. GA preferred approach identified by G06.

## G06

[Restricting MCP usage based on a registry](https://docs.github.com/en/copilot/how-tos/administer-copilot/manage-mcp-usage/restrict-based-on-registry)

Registry-only versus allow-all, public-preview status and recommendation to use GA managed settings rather than conflicting registry restrictions.

## G07

[Content exclusion concepts and support matrix](https://docs.github.com/en/copilot/concepts/security-governance-and-network-settings/content-exclusion)

Supported surfaces, limitations, preview status and CLI support-table side of the unresolved conflict.

## G08

[Excluding content from Copilot](https://docs.github.com/en/copilot/how-tos/configure-content-exclusion/exclude-content-from-copilot)

Configuration roles, testing/propagation procedure, unsupported modes and CLI-not-supported statement conflicting with G07.

## G09

[Custom instructions](https://docs.github.com/en/copilot/concepts/prompting-and-context/custom-instructions)

Probabilistic guidance, surface-specific scope/precedence, organization instructions and head-branch handling for review.

## G10

[Copilot cloud-agent access](https://docs.github.com/en/copilot/concepts/enterprise/cloud-agent-access)

Current cloud-agent terminology, B/E default enablement and repository opt-out boundaries.

## G11

[Responsible use of GitHub Copilot agents](https://docs.github.com/en/copilot/responsible-use/agents)

Application card: native permissions, attribution/signatures, session links, public-code matching, model selection, BYOK and safety boundaries. Some categorical secret/workflow statements lag dedicated how-tos G12-G13.

## G12

[Configuring secrets and variables for cloud agent](https://docs.github.com/en/copilot/how-tos/copilot-on-github/customize-copilot/customize-cloud-agent/configure-secrets-and-variables)

Current **Agents** secrets/variables, migration from Actions `copilot` environment, org/repo scope and MCP-specific values.

## G13

[Configuring agent settings](https://docs.github.com/en/copilot/how-tos/use-copilot-agents/cloud-agent/configuring-agent-settings)

Configurable workflow approval/security validation; warning about removing approval and exposing Actions secrets/write access.

## G14

[Customizing the cloud-agent firewall](https://docs.github.com/en/copilot/how-tos/copilot-on-github/customize-copilot/customize-the-firewall)

Internet access UI, org locking, allowlists and important process/setup/environment coverage limits.

## G15

[Reviewing Copilot audit logs](https://docs.github.com/en/copilot/how-tos/administer-copilot/manage-for-enterprise/review-audit-logs)

Audit viewer permissions, `action:copilot` / `actor:Copilot`, 180-day retention, SIEM recommendation and exclusion of local prompt-session data.

## G16

[GitHub Copilot FAQ](https://github.com/features/copilot#faq)

Privacy/default-retention and IP-protection descriptions. Use current administration docs for entitlements; do not treat a marketing FAQ as the final contract.

## G17

[GitHub Generative AI Services Terms](https://github.com/customer-terms/github-generative-ai-services-terms)

**March 2026** terms: Inputs/Outputs, training qualifications, retention references, required mitigations, purchasing-channel and defense/indemnity conditions. Legal review required.

## G18

[GitHub Data Protection Agreement](https://github.com/customer-terms/github-data-protection-agreement)

Processor/subprocessor roles, specified controller purposes, preview exclusions unless designated, international transfers and regional-storage distinction.

## G19

[GitHub Copilot with data residency](https://docs.github.com/en/enterprise-cloud@latest/admin/data-residency/github-copilot-with-data-residency)

Eligible GHE Cloud with data residency, US/EU availability, clients and disabled-by-default compliant-model restriction. Not blanket worldwide residency.

## G20

[Deprecated Copilot product-specific terms](https://github.com/customer-terms/github-copilot-product-specific-terms)

Historical reference only: deprecated for new subscriptions/renewals effective **5 March 2026**. Do not quote old deletion language as a universal current commitment.

## G21

[Copilot in IDEs](https://docs.github.com/en/copilot/concepts/copilot-surfaces/copilot-in-ides)

Public-code reference/index/acceptance limitations.

## G22

[Customizing the cloud-agent development environment](https://docs.github.com/en/copilot/how-tos/copilot-on-github/customize-copilot/customize-cloud-agent/customize-the-agent-environment)

Environment/setup behavior, self-hosted/Windows constraints and setup failure not being a fail-closed compliance gate.

## M01

[REST: Copilot usage metrics](https://docs.github.com/en/rest/copilot/copilot-usage-metrics)

Exact current enterprise/org report routes, role/scopes, policy prerequisites, download envelopes and history. Fetched REST examples use API version **2026-03-10**.

## M02

[Closing-down notice of legacy Copilot metrics APIs](https://github.blog/changelog/2026-01-29-closing-down-notice-of-legacy-copilot-metrics-apis/)

Published **29 January 2026**: announced 2 March retirement for user-level feature engagement/Direct Data Access, and **2 April 2026** for legacy Copilot Metrics API. Historical replacement-preview wording superseded by M03. No assertion of exact retired-endpoint HTTP behavior.

## M03

[Copilot metrics is now generally available](https://github.blog/changelog/2026-02-27-copilot-metrics-is-now-generally-available/)

Published **27 February 2026**: GA dashboards/reports and fine-grained role access.

## M04

[Copilot metrics concepts](https://docs.github.com/en/copilot/concepts/billing-and-usage/copilot-usage-metrics/copilot-metrics)

Scope, coverage, org attribution, minimum client versions, adoption phases and directional potential-ROI estimates. Says two-full-UTC-day freshness, conflicting with M05/M07.

## M05

[Viewing usage and adoption](https://docs.github.com/en/copilot/how-tos/administer-copilot/view-usage-and-adoption)

Dashboard roles/policy/navigation/export and three-full-UTC-day guidance.

## M06

[Copilot usage-metrics reference](https://docs.github.com/en/copilot/reference/copilot-usage-metrics/copilot-usage-metrics)

Current fields, report shapes, CLI differences, rolling windows, optional fields and per-user consumption not invoice amounts.

## M07

[Reconciling usage metrics](https://docs.github.com/en/copilot/reference/copilot-usage-metrics/reconciling-usage-metrics)

Coverage gaps, server/client telemetry differences, delayed finalization, missing values and dashboard/export differences.

## M08

[Team-level Copilot usage metrics](https://docs.github.com/en/copilot/reference/copilot-usage-metrics/team-level-metrics)

Daily membership/user joins, scope keys, five-seated-user report threshold, multi-team attribution and rollup cautions.

## M09

[REST: Copilot user management](https://docs.github.com/en/rest/copilot/copilot-user-management)

Seat/subscription APIs, pagination and documented token scopes; retrieved page marks endpoints public preview.

## M10

[Copilot activity metrics data](https://docs.github.com/en/copilot/reference/metrics-data)

`last_activity_at` meaning/preview label, 24-hour processing, 30-minute report refresh, rolling 90-day retention and authentication caveats.

## M11

[Copilot billing for organizations and enterprises](https://docs.github.com/en/copilot/concepts/billing-and-usage/organizations-and-enterprises/billing)

Standard 1,900/3,900 included corporate credits, conversion, billing-entity pooling, monthly reset, additional usage default and differing budget stop behavior.

## M12

[REST billing usage](https://docs.github.com/en/rest/billing/usage) and [enterprise-selector reference](https://docs.github.com/en/enterprise-cloud@latest/rest/billing/usage)

AI-credit/premium-request usage routes, filters, roles, billing fields and 24-month history. These are two selector views of the same reference, not independent corroboration.

## M13

[GitHub Copilot is moving to usage-based billing](https://github.blog/news-insights/company-news/github-copilot-is-moving-to-usage-based-billing/)

Historical transition announcement: **1 June 2026** effective change; $19/$39 seat prices; June-August corporate promotional credits; annual personal-plan exception. Do not present expired promotions or temporary purchase-pause language as current.

## M14

[Models and pricing](https://docs.github.com/en/copilot/reference/copilot-billing/models-and-pricing)

Model/token/caching pricing, completion exemption and code-review Actions charges; time-sensitive promotions require recheck.

## M15

[Legacy request-based billing](https://docs.github.com/en/copilot/reference/copilot-billing/request-based-billing-legacy/copilot-requests)

Existing annual personal Pro/Pro+ exception after June 2026; not current corporate premium-request allowances.

## A01

[Measuring the success of a Copilot trial](https://docs.github.com/en/copilot/tutorials/roll-out-at-scale/measure-success)

Goals, adoption/engagement, qualitative feedback, API/report use and expansion decisions. Its illustrative targets are not universal enterprise benchmarks.

## A02

[Driving team adoption of agentic Copilot](https://docs.github.com/en/copilot/tutorials/roll-out-at-scale/enable-developers/drive-team-agentic-adoption)

Two-week activation sprint, owners, representative teams, approved workflows, baseline/outcomes and stop criteria. Explicitly not enough evidence for long-term causal productivity/cost claims.

## Revalidation procedure

Before every delivery, revisit time-sensitive sources, compare effective tenant/client behavior, and date any updated statement. Preserve conflicting statements rather than silently selecting the more reassuring one. Confirm legal requirements with counsel and product uncertainty with GitHub support.
