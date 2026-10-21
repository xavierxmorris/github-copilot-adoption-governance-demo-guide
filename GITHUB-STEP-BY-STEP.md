# GitHub features: step-by-step walkthrough

**Click-by-click companion to the [30-minute run sheet](RUN-SHEET.md). Navigation checked against official documentation on 21 October 2026.**

This guide covers the GitHub-side features in the Copilot governance demo, in priority order. It is a **read-only inspection and presentation guide**, not an instruction to enable features, buy seats, change budgets or deploy policy. The GitHub screens were documented, **not exercised in your enterprise**.

## Before you start

Use an authorized enterprise/organization and a disposable or approved demonstration repository. Obtain approval for the audience and recording. Prepare one existing cloud-agent PR, or use the linked documentation as the fallback.

Do not click a policy toggle or choose a different enforcement value: some controls can apply immediately. Do not click **Purchase seats**, **Save changes**, **Approve and run workflows**, **Merge**, or an agent **Start/Send/Fix** action during this walkthrough.

Keep secrets, employee identities, raw exports, signed download URLs and private configuration off-screen. A secret **name** or network rule can also disclose internal information; show only audience-approved metadata. Use the synthetic example when live evidence is not approved.

| Scope | Required access for this walkthrough | If unavailable |
|---|---|---|
| Enterprise Copilot controls | Enterprise owner or explicitly authorized delegated administrator; applicable Business/Enterprise setup | Open the cited official procedure, not personal Copilot settings |
| Organization Copilot controls and seats | Organization owner; licensed organization | Documentation plus synthetic seat example |
| Repository settings, agent credentials/network | Repository administrator; organization ownership for organization settings | Existing sanitized artifact or documentation |
| Instructions, active rules, PRs and shared sessions | Repository access; preverify the specific session. Write access is needed to trigger work, not established as a blanket viewing requirement | Public documentation |
| Usage dashboard | Enterprise owner/billing manager or applicable metrics-viewer role; usage-metrics policy enabled | Offline rehearsal |
| Budgets/billing | Account owner or appropriate billing manager/viewer; edit rights are not implied by view rights | Synthetic calendar-month estimate |
| Enterprise audit | Enterprise owner or custom role with Read enterprise audit logs | Official audit guide |

Business/Enterprise above means the **Copilot plan**, not automatically the GitHub Enterprise subscription. This is a GitHub Cloud walkthrough, not a GitHub Enterprise Server administration guide. Use your authorized GHE.com host where applicable; do not assume a regional enterprise uses GitHub.com URLs.

## Navigation shortcuts

| Name used below | How to open it |
|---|---|
| **Enterprise** | Open [Your enterprises](https://github.com/settings/enterprises), then select the approved enterprise. If none is listed, use documentation mode. |
| **Organization settings** | Profile picture -> **Organizations** -> select the organization -> **Settings**. If Settings is in the overflow menu, open **...** first. |
| **Repository settings** | Open the approved repository -> **Settings**; use **...** if the tab is hidden. |
| **Repository Code** | Open the repository -> **Code**. File paths below are repository paths, not local Windows paths. |

The publicly published guide repository is not evidence that you have an enterprise plan, configured policy, assigned seats, an agent PR or a usage dashboard.

## Fit these steps into 30 minutes

The detailed steps also serve as a rehearsal reference. Pre-open the authorized tabs and inspect supporting settings **before** the live session; do not try to navigate every preparatory page on stage.

| Clock | Live path through this guide |
|---|---|
| 00:00-02:00 | [01 Account and scope](#01-account-and-scope) |
| 02:00-06:00 | [02 Policy inheritance](#02-policy-inheritance) |
| 06:00-10:00 | [03 Models and feature defaults](#03-models-and-feature-defaults), [04 MCP controls](#04-mcp-controls) |
| 10:00-13:00 | [05 Exclusion and public-code matching](#05-exclusion-and-public-code-matching), [06 Instructions and repository rules](#06-instructions-and-repository-rules) |
| 13:00-17:00 | Show one prepared finding from [07 Agent access and settings](#07-agent-access-and-settings), then [08 Agent PR evidence](#08-agent-pr-evidence) |
| 17:00-24:00 | [09 Seats and activity](#09-seats-and-activity), [10 Usage and report exports](#10-usage-and-report-exports), [11 Billing and budgets](#11-billing-and-budgets) |
| 24:00-28:00 | [12 Audit evidence](#12-audit-evidence), [13 Privacy and residency](#13-privacy-and-residency) |
| 28:00-30:00 | [14 Pilot decision](#14-pilot-decision) |

## 01 Account and scope

**Role:** the authorized presenter. **Goal:** identify whose policy, repository and bill you are discussing.

1. Check the browser's signed-in GitHub account without displaying account-switching details to the audience.
2. Open the approved **Enterprise**, if one exists. Confirm its name privately.
3. Open **Organization settings** for the organization supplying the demonstration account's Copilot license.
4. Open the approved repository in a separate tab. Confirm the owner and visibility.
5. State the approved workflows and data classes. If your account is personal-only or lacks the roles above, announce documentation/synthetic mode now.

**Expected result:** one identified licensed-account scope, repository scope and billing owner; no assumption that these are the same.

**Say:** "These policies generally follow the account receiving the corporate license. Repository-level restrictions and separate personal/third-party use are different boundaries."

**Ask:** "Which workflows and repositories are approved, prohibited or undecided?"

**Fallback:** show the policy-scope documentation. No account switching or tenant discovery is needed. **Sources:** [G01](docs/SOURCES.md#g01), [preflight](docs/PREFLIGHT.md).

## 02 Policy inheritance

**Role:** enterprise administrator and organization owner for their respective views. **Goal:** distinguish central enforcement from delegated choice.

1. Open **Enterprise** -> **AI controls**.
2. In the sidebar, click **Copilot**. This contains administration, privacy, model, billing and usage policy areas.
3. Under **Features & clients**, click **Configure features & clients** to inspect feature/client policies. Agent policies have a separate **Agents** sidebar entry; MCP has a separate **MCP** entry.
4. Choose one already-configured policy that is safe to display. Read its **current** state without selecting another state.
5. Open **Organization settings** -> **Copilot** -> **Policies**.
6. Find the corresponding policy. Show the inherited/restricted state if present, or explain the documented relationship if this tenant does not have a suitable example.
7. Contrast it with a delegated setting **only if one exists**. Do not create an example by changing a production policy.

**Expected result:** an existing enterprise-enforced value cannot be overridden by the organization; a delegated decision can be configured at the permitted scope. UI labels and locks may differ by policy.

**Say:** "A documented control is not proof it is configured here. We are checking the effective setting and who owns it."

**Ask:** "Which controls must be centralized, and who approves exceptions?"

**Fallback:** open the official enterprise and organization how-tos side by side. **Sources:** [G01-G02](docs/SOURCES.md#g01), [G04](docs/SOURCES.md#g04).

## 03 Models and feature defaults

**Role:** enterprise owner; organization owner only where model decisions remain delegated. **Goal:** separate explicit approval, release defaults and previews.

1. Open **Enterprise** -> **AI controls** -> **Copilot** -> **Configure models**.
2. Read one model's existing state: enabled, disabled, delegated, or following the default policy. Do not use a model picker response as proof of the whole enterprise policy.
3. Inspect whether **Enterprise teams mode** is already active. It is an opt-in preview: if active, organization-level model settings are deactivated. Do not toggle modes.
4. If the normal organization-delegation mode applies, open **Organization settings** -> **Copilot** -> **Models**. **Enabled/Disabled** with a shield means enterprise enforcement; a dropdown means delegated configuration. **Delegate to Default Policy** follows the organization's released-model default.
5. Return to the enterprise Copilot controls. Inspect **Default availability for released models** separately from an individual model decision.
6. Open **Features & clients** -> **Configure features & clients** and inspect **Default policy for new features**, including any existing unconfigured-policy banner.
7. In **Organization settings** -> **Copilot** -> **Policies**, inspect **Opt in to preview features** if shown. The documented option appears when Copilot in GitHub.com is enabled; it is not a universal switch for every experimental client feature.

**Expected result:** the audience can distinguish explicit policy, delegated policy, unconfigured GA defaults, and previews.

**Date warning:** on **21 October 2026**, the feature-default policy is configurable but not active; GitHub announces activation starting **22 October**. The released-model policy is already active. Recheck the date and actual banner before presenting later.

**Say:** "New-feature defaults, released-model defaults and the model selected for a session are different controls. Code review can use models outside the Models-page selection."

**Boundary:** the current CLI administration guide says locally supplied LLM keys are not controlled by enterprise policies. GitHub-provided model availability is not universal endpoint/data-egress control; assess that BYOK path separately. CLI and the Copilot app also have independent client-enablement policies. [G27](docs/SOURCES.md#g27)

**Ask:** "Who reviews new releases, previews and higher-cost models before broader use?"

**Fallback:** show the default-availability and model-management documentation. **Sources:** [G02-G03](docs/SOURCES.md#g02), [G11](docs/SOURCES.md#g11), [W01](docs/SOURCES.md#w01), [organization model indicators](docs/SOURCES.md#g29).

## 04 MCP controls

**Role:** enterprise owner and managed-client/device-management owner. **Goal:** distinguish tool discovery, server restriction and downstream authorization.

1. Open **Enterprise** -> **AI controls** -> **MCP**.
2. Inspect **MCP servers in Copilot** and any registry-related policy without changing them.
3. Open the public [managed MCP allowlist procedure](https://docs.github.com/en/copilot/how-tos/administer-copilot/manage-mcp-usage/configure-enterprise-allowlist). Show the `allowedMcpServers` and `deniedMcpServers` example, not private enterprise configuration.
4. Identify whether delivery is server-managed, MDM-managed or file-based. For server-managed delivery, open **Enterprise -> AI controls -> Agents** and inspect the existing **Configuration source** and **Configuration summary**. If authorized, view **copilot -> managed-settings.json** on the selected `.github-private` repository's default branch. Do not select a new source or create/publish the file for this demo.
5. Inspect **Copilot settings validation** on **Agents**, if shown. Then review approved evidence of client coverage and a **previously performed** allowed/blocked-server check. Valid configuration is not proof of delivery. If runtime evidence is absent, label enforcement **unverified** rather than invoking a tool.
6. Open the managed-settings reference's supported-key table. If relevant to the audience, distinguish `permissions.deny`, fresh human approval via `permissions.ask`, disabling bypass permission modes, and minimum `sandbox` restrictions from instructions. Check each property's client, harness and minimum-version requirements: granular VS Code permission rules require Agent Host; managed MCP lists and local sandbox keys are not documented as supported by cloud agent.
7. Identify the owner of each approved server's credential scope and downstream data handling.

**Expected result:** a known restriction mechanism, deployment scope and test status. A populated registry by itself proves discovery, not restriction.

**Limits:** built-in default servers are allowed before allow/deny evaluation; other denies take precedence and every applicable allowlist layer must match. The old registry restriction is preview and no longer the recommended enforcement approach. Do not loosen it during this walkthrough.

Server names are user-assigned labels. Where server identity matters, use the documented remote URL or exact local-command matching and review the server's credentials; a familiar name is not a trust guarantee.

Server-managed policy follows the signed-in corporate-licensed account. The deployment guide says a CLI session can lack server policy when retrieval fails and no cached policy exists; do not promise an unconditional offline fail-closed boundary. Device-delivered policies have different scope. Third-party hosts need separate controls.

**Ask:** "Which tools may act on which systems, with whose credentials, and how is enforcement verified?"

The managed-settings reference also documents `forceRemoteSettingsRefresh` and mandatory-sandbox requirements. Device-first startup, compatible clients, operating-system limitations and actual deployment still matter; do not promise universal enforcement from an uploaded file.

**Fallback:** public allowlist/deployment docs; do not run an unapproved MCP server. **Sources:** [G04-G06](docs/SOURCES.md#g04), [W02](docs/SOURCES.md#w02), [source selection](docs/SOURCES.md#g28), [validation](docs/SOURCES.md#g24), [per-client managed controls](docs/SOURCES.md#g26).

## 05 Exclusion and public-code matching

**Role:** repository administrator or authorized organization/enterprise owner. **Goal:** show exact scope rather than claim universal DLP.

1. Open **Repository settings** -> **Copilot** -> **Content exclusion**.
2. Inspect existing rules. Gray inherited-rule boxes, if present, are not editable at repository scope.
3. For broader scope, use **Organization settings** -> **Copilot** -> **Content exclusion**, or **Enterprise** -> **AI controls** -> **Copilot** -> **Content exclusion**.
4. Explain one harmless prepared rule or the official example. Do not add confidential text or create/change a rule during the demo.
5. Open the official supported-surfaces table. State that VS Code Edit/Agent modes are unsupported and the CLI documentation currently conflicts; do not test a bypass.
6. Separately open **Enterprise** -> **AI controls** -> **Copilot** and inspect **Suggestions matching public code** in **Privacy**, or the applicable organization **Copilot** -> **Policies** view.
7. Explain what the public-code setting and references can establish, separately from content exclusion.

**Expected result:** an identified exclusion scope and supported mode, plus the actual public-code matching policy. Seeing a rule is not proof of client enforcement.

**Say:** "Content exclusion is not universal DLP. Public-code matching is a provenance aid, not complete license clearance; cloud agent and CLI have documented matching limitations even when Block is selected."

**Ask:** "Which data must never reach an unsupported surface or connected tool?"

**Fallback:** support/configuration docs. If a supported-client exercise is desired, prepare it separately with harmless files and GitHub's testing procedure; changes can take up to 30 minutes to propagate. **Sources:** [G04](docs/SOURCES.md#g04), [G07-G08](docs/SOURCES.md#g07), [G11](docs/SOURCES.md#g11), [G21](docs/SOURCES.md#g21).

## 06 Instructions and repository rules

**Role:** repository reader for files/active rules; administrator for settings. **Goal:** distinguish guidance from a merge gate.

1. Open **Repository Code** in the prepared demonstration repository.
2. If present, click `.github`, then `copilot-instructions.md`. Read one approved convention or test instruction. Do not imply this guide repository has that file.
3. Open the repository's **Code** tab -> branch dropdown -> **View all branches**.
4. Find the prepared PR's **base branch**. Beside it, click the **view rules/shield** icon if present, then open the applicable ruleset. Only branches with a ruleset have this icon. Alternatively, append `/rules` to the approved repository URL.
5. Inspect the actual active requirements: target branch, PR/review requirements and status checks, where configured. Distinguish active enforcement from evaluation-only or absent rules.
6. In the prepared PR, inspect the merge box and its real blocking requirements. Do not bypass, weaken, create or edit rules.

**Expected result:** a concrete guidance file and an independently enforced repository rule, **if configured**. Neither an instruction nor an AI review establishes a required human review/check by itself.

**Say:** "The model may not follow an instruction. The repository's configured permissions and active rules decide what can be promoted."

**Ask:** "What independent gate prevents unsafe output from becoming a trusted change?"

**Fallback:** custom-instruction concepts and the ruleset viewing procedure. No rules or no shield means this route cannot establish an active ruleset; do not conclude all other protection mechanisms are absent. **Sources:** [G09](docs/SOURCES.md#g09), [W09](docs/SOURCES.md#w09).

## 07 Agent access and settings

**Role:** organization owner for organization controls; repository administrator for repository settings. **Goal:** inspect execution scope before showing an agent PR.

1. Open **Organization settings** -> **Copilot** -> **Policies**. Inspect the cloud-agent entitlement policy and any applicable enterprise restriction.
2. Open **Organization settings** -> **Copilot** -> **Cloud agent**.
3. Inspect **Repository access** and whether the prepared repository is already permitted. Do not select a different access mode or change the repository list.
4. If visible, inspect **Partner agents** and **Allow automations** as separate decisions; do not enable them. Automations require a private/internal repository, so do not promise this feature in the public guide repository.
5. Open **Repository settings** -> **Copilot** -> **Cloud agent**.
6. Read **Validation tools** and **Actions workflow approval** -> **Require approval for workflow runs**. Do not change them.

Prepare the following supporting views beforehand; on stage show only an approved summary or one relevant control:

| Control | Click path | What to inspect without changing |
|---|---|---|
| Agent secret scope | Repository or organization **Settings** -> **Secrets and variables** -> **Agents** -> **Secrets** | Approved names/scopes only. Do not reveal values or open variable values. Current Agents location supersedes old `copilot`-environment walkthroughs. |
| Internet access | Repository or organization **Settings** -> **Copilot** -> **Internet access** | Separate cloud-agent/code-review sections; effective firewall, recommended allowlist and custom-rule ownership |
| Org network inheritance | Organization **Copilot** -> **Internet access**, compared with repo view | Whether repo choices/custom rules are permitted or locked; do not add a rule |

**Expected result:** known agent entitlement, repository scope, workflow approval/validation state, and credential/network owner. Corporate agent access is documented disabled by default, but enabled users can generally use it across repositories unless restricted.

**Limits:** the integrated firewall does not cover all MCP processes/setup steps or all execution environments. Added credentials can extend downstream access. A setup failure is not a fail-closed compliance gate.

**Ask:** "Who may initiate work, approve code execution, grant credentials and stop the agent?"

**Fallback:** official settings/access docs. Do not launch a task, reveal configuration or broaden permissions to obtain a live example. **Sources:** [G10-G14](docs/SOURCES.md#g10), [G22](docs/SOURCES.md#g22), [W03](docs/SOURCES.md#w03).

## 08 Agent PR evidence

**Role:** authorized repository access; verify the specific shared session during preparation. Creating/triggering work requires write access but is outside this walkthrough. **Goal:** follow the evidence without executing anything.

1. Open the prepared repository -> **Pull requests** -> the existing approved cloud-agent PR.
2. In **Conversation**, identify the initiating request/user and Copilot activity in the timeline.
3. Click **Commits**, open an existing Copilot commit, and inspect its full message, attribution/co-author and signature details where available. The documented session-log link is in the commit message; do not assume every interface has a button named "View session."
4. Return to the PR and click **Files changed**. Inspect the change, especially any `.github/workflows` modifications.
5. Click **Checks**, then inspect the PR's merge box for actual checks/reviews and workflow-approval status.
6. If the existing commit/PR provides an accessible session link and its contents are approved, open it. Repository **Agents -> All sessions** is another documented route. Cloud sessions are shared with repository-access holders by default; local sessions are unshared by default. Do not assume every session URL is accessible or generate another task to create a link.
7. Point out any **Approve and run workflows** control without clicking it. Do not comment `@copilot`, assign an issue, request a review, press a Fix action or merge.

**Expected result:** a traceable request, attributed change and review/check evidence. Missing evidence remains missing; a green check is not a universal security verdict.

**Evidence limit:** a verified signature establishes provenance, not correctness. Do not treat the initiator's or Copilot's own review as the required independent human approval; inspect the actual merge requirements and which validation ran for the latest commit.

**Say:** "Native branch constraints, actual repository gates and credentials each matter. We are not claiming every agent on every surface is technically unable to merge."

**Ask:** "What evidence would you retain if this change were accepted, rejected or involved in an incident?"

**Fallback:** the agent application card and GitHub cloud-agent procedure, not a fabricated tenant screenshot. **Sources:** [G11](docs/SOURCES.md#g11), [G13](docs/SOURCES.md#g13), [W10](docs/SOURCES.md#w10), [session access](docs/SOURCES.md#e01), [session data](docs/SOURCES.md#e02), [reviewing output](docs/SOURCES.md#e04).

## 09 Seats and activity

**Role:** organization owner; appropriate enterprise billing/license access for the enterprise alternative. **Goal:** distinguish licensed, authenticated and observed-active users.

1. Open **Organization settings** -> **Copilot** -> **Access**.
2. Read the existing seat overview and estimated seat cost where shown. If the page offers first-time setup/purchase, stop; do not click **Start adding seats** or allow the organization to assign seats.
3. Under **Access management**, use **Sort** to inspect existing last-activity ordering only if individual information is approved for this audience.
4. Locate **Get usage report** -> **Get activity report**, but do not request/download an employee report for a public presentation. Identify the location, then use synthetic data.
5. Enterprise alternative: **Enterprise** -> **Billing & Licensing** -> **Licensing** -> find **Copilot** -> locate **Get activity report**. Do not confuse general Enterprise Cloud licenses with Copilot seats.
6. Run the local synthetic example, from this repository root:

```powershell
.\scripts\Show-Demo.ps1
```

**Expected result:** the offline output shows 8 seats, 6 observed IDE-active users and 2 **human review suggested** seats. These are invented, not tenant results. The activity report identified above is CSV; it is not the usage-metrics NDJSON export in the next section.

**Say:** "Receiving a suggestion can count as activity. Null or old activity can reflect retention or coverage, not proof someone never used Copilot. Review leave, onboarding and other surfaces before changing seats."

**Ask:** "Who owns joiner/mover/leaver allocation and reviews apparent inactivity?"

**Fallback:** the script and seat-management documentation; no license assignment/revocation. **Sources:** [M09-M10](docs/SOURCES.md#m09), [W04-W06](docs/SOURCES.md#w04).

## 10 Usage and report exports

**Role:** authorized enterprise metrics viewer; usage-metrics policy enabled. **Goal:** show adoption and the current export contract.

1. Open **Enterprise** -> **Insights** -> **Copilot usage**.
2. Read the displayed report window. Use mature data and conservatively allow three full UTC days; official sources differ between two and three.
3. Inspect observed users and the supported feature/model/language breakdowns. Explain scope/telemetry before interpreting missing data.
4. Explain that organization membership and team overlaps can duplicate counts. Team reports have a five-**seated**-user threshold and need daily membership joins; do not sum team/org distinct-user totals.
5. Optionally open **Insights** -> **Copilot impact**. Describe native adoption cohorts and potential ROI as directional estimates, not this kit's repeat-use formula or audited causal returns. Do not change compensation inputs in a tenant demonstration.
6. Locate **Export JSON** at the dashboard's top right without generating a fresh export. The documented output is **NDJSON**, despite the button's label; keep real user-level data off-screen.
7. Open the [current usage-report REST reference](https://docs.github.com/en/rest/copilot/copilot-usage-metrics). Show the latest-28-day aggregate report route and response envelope.
8. Explain **request -> signed download links -> all NDJSON files**. This is not the retired legacy inline metrics API. Download all files only in a separately approved private workflow; never forward GitHub authentication headers to the signed-download host or publish the links.

**Optional private, read-only API rehearsal:** with an already-authorized `gh` session, replace the placeholder with your approved enterprise slug. Role and token scope are separate prerequisites; see [the permissions table](docs/METRICS-AND-ADMIN.md#access-and-reporting-prerequisites).

```powershell
$enterprise = 'APPROVED-ENTERPRISE-SLUG'
gh api --method GET `
  -H "Accept: application/vnd.github+json" `
  -H "X-GitHub-Api-Version: 2026-03-10" `
  "enterprises/$enterprise/copilot/metrics/reports/enterprise-28-day/latest" `
  --jq '{report_start_day, report_end_day, download_file_count: (.download_links | length)}'
```

This prints dates and file count, **not signed URLs or usage rows**. It does not download files or establish complete adoption/coverage. Do not enable new permissions or change accounts to make it work during the demo.

For an organization-only account, use the documented organization report routes in [Metrics and administration](docs/METRICS-AND-ADMIN.md#current-api-templates). The cited dashboard how-tos establish the enterprise path; do not assume that same navigation is an organization UI path.

**Expected result:** a mature, scoped dashboard/report, or an explicitly unavailable result. With synthetic data, narrate 75% observed utilization and 4/6 repeat engagement as **kit definitions**.

**Ask:** "Which enablement decision should this report change, and what would establish quality or delivery impact?"

**Fallback:** `Show-Demo.ps1` plus public REST docs. A 403/404, empty report, expired link or missing field is **not zero usage**. **Sources:** [M01-M08](docs/SOURCES.md#m01), [W11](docs/SOURCES.md#w11), [dashboard export procedure](docs/SOURCES.md#m17).

## 11 Billing and budgets

**Role:** appropriate account owner/billing viewer; budget-manager rights only for inspection of details that require them. **Goal:** distinguish pool consumption, extra charges, alerts and hard stops.

1. Open the approved **Enterprise** -> **Billing & Licensing** tab. Organization alternative: **Organization settings** -> under the **Access sidebar section**, click **Billing & Licensing**. This is not **Copilot -> Access**.
2. Under **Usage**, open **AI usage**. Read prepared credit-consumption/model information; **Group by -> Products** is a documented grouping. Consumption, included usage and net billed spend are not interchangeable. Enterprise owners/billing managers can filter by user; organization owners do not have direct user-level visibility here and need an approved report instead.
3. Open **Budgets and alerts**. Use the scope dropdown/search to find existing Copilot/AI-credit budgets. Read scope, amount, spending and status. Do not press **New budget**.
4. Show a previously approved capture or owner-confirmed record of **Stop usage when budget limit is reached**. The list alone may not display enforcement details. An authorized owner can inspect an existing budget's **... -> Edit** view during off-clock preparation without changing/saving anything; do not enter that edit flow on stage. If the state is unavailable, label it **unverified**.
5. Distinguish user-level consumption limits from enterprise/org/cost-center metered-spending limits. User-level budgets always hard-stop AI-credit-consuming features; metered spending limits stop only with the stop option enabled, which is off by default. Otherwise they act as alerts.
6. Confirm the owner has checked overlapping budgets, cost-center exclusions and any included-usage controls. An enterprise limit is not automatically an all-cost maximum, and a cost-center exclusion changes its coverage.
7. Inspect **AI credits paid usage** in the relevant enterprise Copilot controls or organization's **Copilot -> Policies** view if available. Do not toggle it.
8. Point to **Get usage report** on **AI usage** only if explaining export. The documented continuation is report details -> **Email me the report**; do not start the report/email job during the demo.
9. Use the script's **separate calendar-month billing example**: 100 Business seats, 190,000 included credits, 210,000 consumed, $200 estimated overage. It is not the eight-person adoption cohort's bill.

**Expected result:** a known billing entity, included pool, applicable scope and actual stop status, or an explicit unresolved item. Additional corporate usage is enabled by default according to current docs; inspect the tenant.

**Say:** "Current corporate billing uses AI credits. Seat fees, metered overage and Actions charges are separate. A budget alert alone is not a cap."

**Limit:** budget exhaustion does not turn off included code completions/next edit suggestions or guarantee an automatic cheaper-model fallback. Do not equate an AI usage report's documented 24-hour download-link expiry with an unverified lifetime for metrics API download links.

**Ask:** "Who can respond to unexpected spend, and which configured control actually stops further usage?"

**Fallback:** synthetic estimate and current budget docs. Do not alter a budget to demonstrate a stop or initiate paid usage. **Sources:** [M11-M16](docs/SOURCES.md#m11), [W07-W08](docs/SOURCES.md#w07), [W12](docs/SOURCES.md#w12).

## 12 Audit evidence

**Role:** enterprise owner or Read enterprise audit logs role. **Goal:** identify what can actually be reconstructed.

1. Open **Enterprise** -> **Settings** -> **Audit log**.
2. Confirm an approved time window and audience-safe view before showing results.
3. Search `action:copilot created:2026-10-20..2026-10-21` for plan/policy/license-related events, substituting the approved UTC date range. Do not add a repository qualifier to settings events that may not have a repository field.
4. If appropriate, refine to the documented seat-assignment example `action:copilot.cfb_seat_assignment_created`. Do not create a new seat assignment just to generate an event.
5. Separately search `actor:Copilot repo:ORG/REPO created:2026-10-20..2026-10-21` for activity in the prepared repository, replacing the placeholders and dates. Action-prefix and actor searches are different event families, not interchangeable completeness tests.
6. Open an approved existing event, if any, and identify its action, actor, time and scope. Compare with the prepared PR/evidence reference only where a valid relationship is established.
7. Ask the owner where evidence beyond the documented 180-day audit history is retained, and whether approved SIEM streaming covers the required events. Do not configure a destination.

**Expected result:** an actual event or an honest no-result/unavailable state. Neither a blank search nor one event proves complete coverage.

**Say:** "These logs do not include all local prompts or outputs. Session logs, PRs, audit events and SIEM records have different content and retention."

**Organization-owner alternative:** profile picture -> **Organizations** -> organization -> **Settings** -> under **Archive**, **Logs -> Audit log**. Use the relevant date/action/actor filters. This is organization-scoped evidence, not an enterprise-wide replacement.

**Export location, not an on-stage download:** **Export -> JSON** or **CSV** in the applicable audit view. Download only with approval to a private evidence destination. Ordinary web audit history is 180 days, while the default view is three months; other event types and collection channels have different limits.

**Ask:** "Which evidence, identities and retention period does your audit require?"

**Fallback:** the official Copilot audit guide. No fabricated event and no sensitive export. **Sources:** [G15](docs/SOURCES.md#g15), [organization audit procedure](docs/SOURCES.md#e03), [enterprise search](docs/SOURCES.md#e06), [security evidence guide](docs/SECURITY-AND-AUDIT.md).

## 13 Privacy and residency

**Role:** authorized enterprise administrator with privacy/security/legal stakeholders. **Goal:** separate documented assurances from customer-specific eligibility.

1. Open the current [Generative AI Services Terms](https://github.com/customer-terms/github-generative-ai-services-terms), version **March 2026**. Start at **Applicability**: direct GitHub volume licensing, Microsoft purchasing and personal subscriptions do not all use this same terms module. The [Copilot FAQ Privacy section](https://github.com/features/copilot#faq) is supplementary, not the controlling agreement; use it only if it renders.
2. Contrast **Use of Data for Model Training** with **Data Handling**. The former says no training on inputs/outputs unless documented instructions are given; the latter says some services retain inputs/outputs and refers to feature documentation. Do not translate no-training into universal zero-retention or transfer corporate assurances to a separate personal account or BYOK provider.
3. Open the [DPA](https://github.com/customer-terms/github-data-protection-agreement), particularly **Scope and Order of Precedence**. Check whether a specific preview is expressly covered, and identify subprocessors/data paths for legal confirmation rather than assuming all previews inherit production terms.
4. If residency is required, first confirm the enterprise actually uses **GitHub Enterprise Cloud with data residency** in a supported region.
5. In that eligible enterprise, open **AI controls** -> **Copilot** -> **Features & clients** -> **Configure features & clients** and inspect **Restrict Copilot to data residency compliant models** if available. The residency page describes it under the **Features** policies; if the tenant layout differs, use that documented policy name rather than assuming an absent control is enabled.
6. Open the residency documentation and compare the actual designated region, supported clients/features and connected-service boundaries. On the research date, supported regions are **US and EU**.
7. Flag the documented **10% increase in AI-credit consumption** for region-enforced requests to the billing owner. Do not enable the policy to demonstrate it.
8. Record contract/purchasing-channel, conditional IP protection and any unapproved third-party/BYOK data path for private follow-up.

**Expected result:** an eligibility/setting/evidence assessment or unresolved requirement, not a blanket compliance verdict.

**Say:** "No training is not zero retention. Buying Copilot Enterprise alone does not establish this regional configuration, and conditional indemnity is not coverage for every output."

**Ask:** "Does your requirement concern storage, inference, logs, support or all of them?"

**Fallback:** current contractual and residency docs; no tenant assurances without evidence. **Sources:** [G11](docs/SOURCES.md#g11), [G16-G20](docs/SOURCES.md#g16).

## 14 Pilot decision

**Role:** sponsor plus accountable platform, security, enablement and billing owners. **Goal:** leave with a bounded decision.

1. Open the [pilot decision record](docs/ADOPTION-PLAN.md#decision-record).
2. Capture the real decision in an approved **private** system, not by editing this public repository.
3. Name the cohort, licensed-account/repository scope, approved workflows/data and unresolved blockers.
4. Name policy/tool/credential exception owners, review/check requirements, evidence retention, spending stop and incident/disable authority.
5. Agree activation and delivery-quality definitions, a baseline, review date and conditions to expand, redesign, pause or stop.

**Expected result:** an owned, reviewable pilot decision or a clear blocker, not merely "Copilot enabled."

**Ask:** "What must be resolved before activation, and who owns each item?"

**Fallback:** the [six highest-priority discovery questions](docs/DISCOVERY-QUESTIONS.md#six-questions-that-must-produce-a-decision). **Sources:** [A01-A02](docs/SOURCES.md#a01).

## If a step cannot be completed

Stop troubleshooting after 30 seconds. State **not available**, **not authorized**, **not configured**, or **not verified** as appropriate; do not treat these states as equivalent. Open that step's cited official procedure or the synthetic example and keep the demo clock moving.

This walkthrough does not deploy policy, configure repository protections, perform a tenant compliance assessment or run live feature tests. For a real validation, retain scope, approver, client/version, observed result and private evidence reference separately from documented behavior.

## Optional off-clock exclusion rehearsal

Only an authorized owner should prepare this in an approved disposable repository. It is not part of the read-only live session and was not performed by this kit.

1. Confirm the applicable Copilot Business/Enterprise account, exclusion scope and supported client/mode. For unsupported or uncertain surfaces, use documentation mode.
2. Through the sandbox's normal change process, prepare a harmless file at `demo\excluded-notes.txt`, for example containing `This is a synthetic blue notebook, not confidential information.` Prepare another harmless file as the non-excluded comparison.
3. Open **Repository settings -> Copilot -> Content exclusion**. Record existing rules privately and add only the owner-approved pattern below under **Paths to exclude in this repository**. Preserve unrelated and inherited restrictions. The pattern uses GitHub's documented repository syntax, not a Windows filesystem path.

```yaml
- "/demo/excluded-notes.txt"
```

4. Follow the page's actual apply behavior and reopen it to confirm persistence; the official procedure does not specify a universal separate Save step.
5. Allow up to 30 minutes for an already-open IDE. In VS Code, **Ctrl+Shift+P -> Developer: Reload Window** refreshes exclusions. Use the official procedure for other supported clients.
6. Before the presentation, compare normal inline-suggestion behavior in the non-excluded file with the excluded file. If neither produces suggestions, the result is inconclusive. Do not ask an agent to retrieve or reproduce excluded content through another route.
7. Record the exact account/license source, client/version, mode, scope, date and approved result. Use the owner's specific cleanup plan afterward; never bulk-reset security controls.

Source: [content-exclusion configuration, propagation and testing](docs/SOURCES.md#g08).
