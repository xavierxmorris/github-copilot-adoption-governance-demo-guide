# Important questions to ask

Use the **first six** during the 30-minute demo; use the deeper bank in discovery or follow-up. Capture real names/decisions privately, not in this public repository.

The [click-by-click walkthrough](../GITHUB-STEP-BY-STEP.md) places a relevant question beside each feature. Choose among those prompts; do not try to ask this whole bank in 30 minutes.

## Six questions that must produce a decision

| Priority | Ask | Strong answer / decision enabled |
|---|---|---|
| 1 | **Which Copilot workflows, repositories and data classes are approved, prohibited or still undecided?** | Named scope and prohibited data; prevents accidental expansion from completions into autonomous tools. |
| 2 | **Who owns enterprise policy, who may delegate, and who approves time-limited exceptions?** | Accountable owner, approval path, expiry and review; governance is operable rather than aspirational. |
| 3 | **Who approves models, previews and MCP tools, including credentials and downstream data handling?** | Explicit intake/approval process and enforced coverage; discovery is not mistaken for trust. |
| 4 | **What adoption or administration decision should the reports change, and what population/window defines success?** | Defined denominator, enablement action and review date; avoids vanity dashboards. |
| 5 | **What must an auditor reconstruct, for how long, and who may access the evidence?** | Evidence chain, retention and privacy owner; audit is not assumed to include every prompt. |
| 6 | **Who can stop the pilot, and what safety, quality, access or spend event triggers that action?** | Named authority, stop behavior and tested recovery; enables a bounded rollout decision. |

## 1. Governance and guardrails: highest-priority discovery

| Ask | Why / answer that changes the design |
|---|---|
| What enterprise/licensing organization governs each participant, and are there multi-org licenses or separate personal accounts? | Determines policy scope and exceptions. Same-account personal subscription and separate-account activity are different cases. |
| Which policies must be enterprise-enforced, and which can org owners decide? | Determines central/delegated ownership and what to show as inherited. |
| How will newly released features/models be reviewed, including the feature-default activation announced for 22 Oct 2026? | Determines change-management cadence and explicit versus default choices. |
| Are IDE agents, cloud agent, CLI, desktop app, code review and partner agents separately approved? | Avoids one "Copilot enabled" answer covering materially different workflows. |
| Which managed clients/versions are allowed, and how do you prove settings reached them? | Determines whether a central rule actually reaches the workforce. |
| Is MCP restricted by managed allow/deny policy? Who owns allowed-server credentials and tool permissions? | Distinguishes policy, server discovery and downstream authorization. |
| Which content-exclusion modes are relied on, and what is the alternative for unsupported/uncertain surfaces? | A hard requirement for universal exclusion may block agent use until another approved control exists. |
| Which repositories may accept cloud-agent work, and who may initiate it? | Determines repository opt-outs and least-privilege rollout. |
| Are workflow approval, required checks and human review independently enforced? Who can change them? | Determines whether generated code can execute or be promoted without the intended gate. |
| Who approves Internet access exceptions, setup scripts and extra credentials? | Captures documented firewall/setup/MCP scope gaps. |
| What is the emergency disable/revoke process, and when was it last rehearsed? | Establishes incident ownership before expansion. |

## 2. Usage, reporting and administration

| Ask | Why / answer that changes the design |
|---|---|
| Are we measuring eligible developers, assigned seats, billed seats or org members? | Defines denominator; these populations are not interchangeable. |
| What do activated, repeated use and sustained adoption mean, over which period? | Establishes stable definitions and prevents inferring first use from last activity. |
| Which surfaces matter, and are their client versions/telemetry covered? | Missing IDE usage does not imply no CLI/GitHub activity. |
| Who has dashboard access, who may export per-user data, and what retention/privacy consultation is required? | Separates aggregate management reporting from identifiable employee data. |
| Are organization/team overlaps and historical membership available? | Determines deduplication and daily joins; small-team threshold limits. |
| Is licensing centralized in one org while developers belong to several? | Prevents treating membership analytics as billing allocation. |
| Who reviews apparent inactivity, and what onboarding/leave/coverage exceptions must be checked first? | Determines a humane seat-review workflow rather than automated removal. |
| Which billing entity, negotiated price, included pool and additional-usage controls apply? | Makes cost estimates match actual sponsorship/contract. |
| Are budget limits hard stops, notifications or overage-only controls? | A threshold without configured stop behavior may not bound spend. |
| Which delivery-quality and developer-feedback measures accompany activity? | Avoids ranking people or claiming ROI from acceptance/code volume. |

## 3. Security, compliance and auditability

| Ask | Why / answer that changes the design |
|---|---|
| Which regulated/personal/confidential data is disallowed in prompts, repos, tools and logs? | Defines the data-flow assessment and permitted workflows. |
| What are the applicable contract, purchasing channel, DPA/subprocessors and preview conditions? | Prevents applying marketing assurances or archived terms to the wrong agreement. |
| Is there a residency requirement for storage, inference, logs, support or all of them? | Determines eligible environment/client/model restrictions and connected-service review. |
| Which data paths use GitHub-hosted models, partner agents or BYOK? | Different processors/retention may need separate approval. |
| Does the evidence requirement need policy events, initiator identity, diffs, session logs, all prompts or deployment approvals? | Identifies gaps beyond Copilot audit logs. |
| Is 180-day audit history sufficient, or is approved SIEM streaming/longer retention required? | Determines retention architecture and evidence owner. |
| How are review findings, secrets, provenance and possible IP/licensing issues handled? | Human/technical verification still matters; indemnity is conditional. |
| What incident would require access suspension, credential revocation, evidence preservation or notification? | Turns an assurance discussion into an actionable response plan. |

## Handling high-risk answers

| Answer heard | Do not assume | Follow-up action |
|---|---|---|
| "We block files, so all agents are safe." | Universal exclusion/DLP | Check exact surface support and requirements before approving workflow. |
| "We have a registry, so tools are locked down." | Discovery equals enforcement | Inspect managed restrictions, built-in exceptions, client coverage and credentials. |
| "Audit logs contain everything." | Full local prompt/output history | Define the required evidence and identify separate approved logging, privacy and retention. |
| "No training means nothing is stored." | Zero processing/retention | Map surface-specific defaults, feedback, telemetry and connected providers. |
| "Enterprise means everything stays in our country." | Universal regional processing | Check actual data-residency offering, region, policy/client/model and third parties. |
| "No recent usage means cancel the seat." | Complete coverage or never activated | Review assignment age, other surfaces, leave, telemetry and retention. |
| "A budget alert caps the bill." | Alert equals enforced stop | Inspect actual budget scope and configured stop behavior. |
| "Higher acceptance proves ROI." | Causal productivity or financial return | Pair quality/delivery baseline, context and feedback; identify assumptions. |

## Close with a decision, not a generic next meeting

Record: pilot sponsor/owner, licensed cohort, approved workflows/repos/data, control/exception owners, evidence/retention, activation and quality baseline, spend stop, incident owner, start/review dates, and any blocker that must be resolved **before** activation. Use the [decision record](ADOPTION-PLAN.md#decision-record).
