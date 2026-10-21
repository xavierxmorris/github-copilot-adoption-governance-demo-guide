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

Eligible GHE Cloud with data residency, US/EU availability, clients and disabled-by-default compliant-model restriction. Current page also documents a 10% increase in AI-credit consumption for region-enforced requests. Not blanket worldwide residency.

## G20

[Deprecated Copilot product-specific terms](https://github.com/customer-terms/github-copilot-product-specific-terms)

Historical reference only: deprecated for new subscriptions/renewals effective **5 March 2026**. Do not quote old deletion language as a universal current commitment.

## G21

[Copilot in IDEs](https://docs.github.com/en/copilot/concepts/copilot-surfaces/copilot-in-ides)

Public-code reference/index/acceptance limitations.

## G22

[Customizing the cloud-agent development environment](https://docs.github.com/en/copilot/how-tos/copilot-on-github/customize-copilot/customize-cloud-agent/customize-the-agent-environment)

Environment/setup behavior, self-hosted/Windows constraints and setup failure not being a fail-closed compliance gate.

## G24

[Getting started with enterprise-managed settings](https://docs.github.com/en/copilot/how-tos/administer-copilot/manage-for-enterprise/use-managed-settings/get-started)

Selected governance repository, `copilot/managed-settings.json`, per-property client support, configuration validation on **AI controls -> Agents**, and client refresh checks. A file merely present in an arbitrary repository is not a deployed enterprise policy.

## G26

[Enterprise managed settings reference](https://docs.github.com/en/copilot/reference/enterprise-administrators/enterprise-managed-settings)

Per-key/client support, permission deny/ask/allow rules, disabling bypass permission modes, sandbox floors, plugin restrictions, MCP allow/deny rules and startup-refresh semantics. Granular VS Code permission rules require Agent Host; these local controls do not automatically govern cloud agent.

## G27

[Administering Copilot CLI for your enterprise](https://docs.github.com/en/copilot/how-tos/copilot-cli/administer-copilot-cli-for-your-enterprise)

CLI versus desktop-app enablement, GitHub-provided model policy and locally supplied BYOK distinction, delegation prerequisites and policy-change audit scope. This page says CLI content exclusion applies, agreeing with G07 but conflicting with G08.

## G28

[Creating a `.github-private` repository](https://docs.github.com/en/copilot/how-tos/administer-copilot/manage-for-enterprise/manage-agents/create-github-private-repo)

**AI controls -> Agents -> Configuration source** selection and configuration summary. Internal/private governance source, visibility versus enforcement scope, and protection of governance changes through rulesets.

## G29

[Managing the availability of models in an organization](https://docs.github.com/en/copilot/how-tos/administer-copilot/manage-for-organization/manage-default-models)

**Settings -> Copilot -> Models**, shield versus dropdown indicators and **Delegate to Default Policy**. Organization model settings unavailable when the enterprise-teams model-access preview is enabled.

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

## M16

[Viewing billing usage and AI usage](https://docs.github.com/en/billing/how-tos/products/view-productlicense-use)

Retrieved **2026-10-21**. Enterprise/organization **Billing & Licensing -> Usage -> AI usage**, role-dependent user visibility, **Group by -> Products**, and **Get usage report -> report details -> Email me the report**. This is billing consumption, not the Copilot adoption dashboard. Report-link expiry is not a universal metrics-download TTL.

## M17

[Tracking usage and adoption](https://docs.github.com/en/copilot/tutorials/roll-out-at-scale/assign-licenses/track-usage-and-adoption)

Retrieved **2026-10-21**. Dashboard **Export JSON** control with documented NDJSON output and adoption interpretation.

## A01

[Measuring the success of a Copilot trial](https://docs.github.com/en/copilot/tutorials/roll-out-at-scale/measure-success)

Goals, adoption/engagement, qualitative feedback, API/report use and expansion decisions. Its illustrative targets are not universal enterprise benchmarks.

## A02

[Driving team adoption of agentic Copilot](https://docs.github.com/en/copilot/tutorials/roll-out-at-scale/enable-developers/drive-team-agentic-adoption)

Two-week activation sprint, owners, representative teams, approved workflows, baseline/outcomes and stop criteria. Explicitly not enough evidence for long-term causal productivity/cost claims.

## Click-by-click procedure sources

The following additional procedures were fetched on **2026-10-21** for [the GitHub walkthrough](../GITHUB-STEP-BY-STEP.md). Existing G/M sources above were reused where their procedures establish the navigation. These are documentation checks, not claims that tenant screens were operated.

## W01

[Managing availability of models in your enterprise](https://docs.github.com/en/copilot/how-tos/administer-copilot/manage-for-enterprise/manage-availability-of-default-models)

**AI controls -> Copilot -> Configure models**, model states and opt-in enterprise-teams mode, which deactivates organization-level model settings. Do not switch modes during the demo.

## W02

[Choosing how to deploy enterprise-managed settings](https://docs.github.com/en/copilot/how-tos/administer-copilot/manage-for-enterprise/use-managed-settings/deploy-managed-settings)

Server-managed `copilot/managed-settings.json`, MDM/file delivery, account/device scope, refresh behavior and CLI cold-start retrieval/no-cache limitation. This guide does not deploy or alter these controls.

## W03

[Adding cloud agent to your organization](https://docs.github.com/en/copilot/how-tos/administer-copilot/manage-for-organization/add-copilot-cloud-agent)

**Settings -> Copilot -> Cloud agent -> Repository access**, entitlement versus repo controls, automations and partner-agent context.

## W04

[Granting access to Copilot for organization members](https://docs.github.com/en/copilot/how-tos/administer-copilot/manage-for-organization/manage-access/grant-access)

**Settings -> Copilot -> Access**, organization-owner role and purchase side effects. Used to identify where to inspect and where the read-only walkthrough must stop, not to authorize purchases.

## W05

[Reviewing user activity in an organization](https://docs.github.com/en/copilot/how-tos/administer-copilot/manage-for-organization/review-activity/review-user-activity-data)

Access overview, **Access management -> Sort**, activity/report distinction and last-activity troubleshooting.

## W06

[Downloading a Copilot activity report](https://docs.github.com/en/copilot/how-tos/administer-copilot/download-activity-report)

Enterprise **Billing & Licensing -> Licensing -> Copilot** report location and organization **Copilot -> Access -> Get usage report -> Get activity report**. No real report is downloaded by the kit.

## W07

[Setting up budgets for metered products](https://docs.github.com/en/billing/how-tos/set-up-budgets)

Account-specific **Billing & Licensing -> Budgets and alerts**, view/filter/edit navigation, budget scopes and alert/stop settings. The walkthrough inspects existing values only.

## W08

[Budgets for usage-based billing](https://docs.github.com/en/copilot/concepts/billing-and-usage/organizations-and-enterprises/budgets)

User-level hard stops, metered-spending stop option, cost-center exclusions, included-usage controls and overlapping limits. A single enterprise amount is not automatically an all-cost cap.

## W09

[Managing rulesets for a repository](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/managing-rulesets-for-a-repository)

Read-access viewing route: branch dropdown -> **View all branches** -> shield -> ruleset; `/rules` alternative and PR merge-box evidence. No creation, editing or bypass is needed.

## W10

[Using cloud agent on GitHub](https://docs.github.com/en/copilot/how-tos/use-copilot-agents/cloud-agent/use-cloud-agent-on-github)

PR/session interaction, activity timeline and actions that start new work. Authored [public source](https://github.com/github/docs/blob/main/content/copilot/how-tos/use-copilot-agents/cloud-agent/use-cloud-agent-on-github.md) fetched for this follow-up; the guide inspects an existing PR and does not invoke those actions.

## W11

[Viewing the Copilot impact dashboard](https://docs.github.com/en/copilot/how-tos/administer-copilot/view-impact-dashboard)

**Enterprise -> Insights -> Copilot impact**, metrics prerequisite and directional rather than exact financial interpretation.

## W12

[Getting started with budget controls](https://docs.github.com/en/copilot/tutorials/budgets/getting-started-with-budget-controls)

User-level versus enterprise spending limits, explicit stop setting and monitoring guidance. Used as explanatory context, not a request to create/change a budget.

## Additional evidence procedures

## E01

[Managing and tracking Copilot agents](https://docs.github.com/en/copilot/how-tos/copilot-on-github/use-copilot-agents/manage-and-track-agents)

Retrieved **2026-10-21**. Repository **Agents -> All sessions** and cloud sessions shared by default with repository-access holders. Viewing existing sessions is distinct from triggering work, which requires write access.

## E02

[Copilot session data](https://docs.github.com/en/copilot/concepts/security-governance-and-network-settings/session-data)

Retrieved **2026-10-21**. Cloud versus local sharing defaults and sensitive session content. Sharing/link availability is not an indefinite retention guarantee.

## E03

[Reviewing the audit log for your organization](https://docs.github.com/en/organizations/keeping-your-organization-secure/managing-security-settings-for-your-organization/reviewing-the-audit-log-for-your-organization)

Retrieved **2026-10-21**. Organization-owner **Settings -> Archive -> Logs -> Audit log** route, filtered JSON/CSV exports, default view versus retained history and export limitations. Not enterprise-wide evidence.

## E04

[Reviewing Copilot's output](https://docs.github.com/en/copilot/how-tos/copilot-on-github/use-copilot-agents/review-copilot-output)

Retrieved **2026-10-21**. Commit-message session links, PR/session inspection and review of the actual generated change. Read-only inspection does not require launching a task.

## E05

[Agentic audit log events](https://docs.github.com/en/copilot/reference/enterprise-administrators/agentic-audit-log-events)

Retrieved **2026-10-21**. Separate preview-gated Copilot Usage Records Streaming, enterprise eligibility, potential request/response content and limits. Do not equate this channel with ordinary audit-UI events or assume it is enabled.

## E06

[Searching the audit log for your enterprise](https://docs.github.com/en/enterprise-cloud@latest/admin/monitoring-activity-in-your-enterprise/reviewing-audit-logs-for-your-enterprise/searching-the-audit-log-for-your-enterprise)

Retrieved **2026-10-21**. Date/action/actor/repository qualifiers, event scope and default time filtering.

## Revalidation procedure

Before every delivery, revisit time-sensitive sources, compare effective tenant/client behavior, and date any updated statement. Preserve conflicting statements rather than silently selecting the more reassuring one. Confirm legal requirements with counsel and product uncertainty with GitHub support.
