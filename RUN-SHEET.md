# 30-minute demonstration run sheet

Audience: platform/engineering leadership, enterprise administrators, security, compliance and developer enablement. Start with [preflight](docs/PREFLIGHT.md). Use read-only live evidence when approved; otherwise announce the documentation/synthetic mode.

For exact GitHub navigation, roles, expected results and fallback steps, use the [click-by-click walkthrough](GITHUB-STEP-BY-STEP.md). Its steps map to the timeboxes below; supporting administrator views should be prepared before the session.

**Opening disclaimer:** "We will demonstrate where controls apply, where they do not, and what evidence they produce. The public reporting example uses invented data. We will not change policies, reveal secrets or approve workflows."

| Clock | Duration | Action and presenter wording | Proof / fallback | Question to ask |
|---|---:|---|---|---|
| 00:00-02:00 | 2 min | State the three priorities. "The outcome is a controlled pilot, not simply enabling AI." Identify the enterprise, licensing organization and repositories without exposing sensitive names. | Use the README allocation and [slide 1](docs/PRESENTATION.md). | "Which decision must this session enable, and what is explicitly out of scope?" |
| 02:00-06:00 | 4 min | Open enterprise Copilot policies, then an organization's corresponding inherited setting. Show one locked value and one delegated value **if present**. Explain licensed-account versus repository scope and separate-personal-account limits. | Existing read-only settings; otherwise official policy docs [G01-G02](docs/SOURCES.md#g01). Do not invent an inherited-policy screenshot. | "Which controls must be centralized, and who can approve exceptions?" |
| 06:00-10:00 | 4 min | Show Models, preview/default-feature settings, then current MCP managed-settings documentation. "Explicit choices, defaults and tool trust are different controls." Explain allow/deny precedence and built-in-server exception; a registry alone is discovery. | Effective settings plus [G03-G06](docs/SOURCES.md#g03). On 21 October, say feature-default activation is announced for 22 October, not already active. | "Who approves new models/features, tool credentials and downstream data access?" |
| 10:00-13:00 | 3 min | Show an existing synthetic content-exclusion rule on a supported surface, or its documentation. Contrast it with repository instructions. "A preference in a prompt is not an authorization boundary." | [G07-G09](docs/SOURCES.md#g07). If not preconfigured, discuss the support matrix; no on-stage propagation wait. Never put real confidential text in a prompt. | "Which data classes must never reach an agent, including unsupported surfaces?" |
| 13:00-17:00 | 4 min | Open a pre-staged cloud-agent PR. Inspect commit attribution/signature, session link, diff, required checks/reviews and existing workflow-approval state. Show Internet access and **Agents secret names/scopes only** if authorized. | Existing sanitized PR, or the control walk-through in [security](docs/SECURITY-AND-AUDIT.md). Explain actual gates, not an assumed universal cannot-merge rule. | "Who may initiate work, approve code execution, review output and stop the agent?" |
| 17:00-24:00 | 7 min | Follow the minute-by-minute reporting segment below. | Approved dashboard or offline `Show-Demo.ps1`; current REST docs. | "What action should these numbers change, and how will we avoid judging people from incomplete data?" |
| 24:00-28:00 | 4 min | Search approved audit data using `action:copilot` and `actor:Copilot`; inspect one existing result if available. Link policy/accountability evidence to the PR. Explain no-training versus retention, contract/preview scope and conditional regional processing. | [G15-G20](docs/SOURCES.md#g15); no tenant events required. A zero-result search is not proof no activity occurred. | "What evidence and retention does your auditor actually need, and which data path remains unapproved?" |
| 28:00-30:00 | 2 min | Summarize decisions: pilot owner, workflows/repositories, baseline, access/exception owners, spend limit/stop behavior and review date. Capture unresolved items privately. | [Pilot decision record](docs/ADOPTION-PLAN.md#decision-record). | "Can we agree a bounded pilot with explicit safety, quality and cost stop conditions?" |

**Total: 30 minutes.** Do not let live navigation consume the decision close.

## The seven-minute reporting segment

| Relative clock | Action |
|---|---|
| 0:00-0:40 | Show the scope, dates and **SYNTHETIC** label. "These are invented observations, not customer telemetry." |
| 0:40-1:25 | Show assigned seats versus observed users; explain receiving a suggestion can update seat activity. |
| 1:25-2:25 | Run `.\scripts\Show-Demo.ps1`; narrate 6/8 observed-active and 4/6 repeat engagement. Define the window and denominator. |
| 2:25-3:20 | Open [current report API documentation](https://docs.github.com/en/rest/copilot/copilot-usage-metrics). Show request -> `download_links` -> NDJSON; this is not the retired inline metrics endpoint. |
| 3:20-4:05 | Explain daily membership joins, overlapping teams and the five-seated-user threshold for user-teams reports. Do not add team counts into an enterprise total. |
| 4:05-5:15 | Show the script's separate 100-seat calendar-month example: included pool, consumption and estimated overage. Open actual billing only if approved. |
| 5:15-6:10 | Show two **review suggested** seats, not a cancellation list. Check assignment age, leave, telemetry and other surfaces first. |
| 6:10-7:00 | Name one enablement experiment. Pair adoption with review quality, rework and developer feedback; do not promise causal ROI. |

## Optional prepared exclusion exercise

Before the session, an authorized owner may create an exclusion for an innocuous test file in a disposable repository and verify it using GitHub's documented testing procedure. Allow up to 30 minutes for propagation; record the client/version and supported mode. Never use a real secret as a marker, ask Copilot to retrieve restricted material, or claim one successful UI indication proves all surfaces are protected. [G07-G08](docs/SOURCES.md#g07)

## Failure branches and strict timeboxes

| Failure | Say / do |
|---|---|
| No enterprise/admin role | "I cannot inspect effective tenant policy here; the following is the documented control, not your configured state." Use official docs. |
| No agent PR or task unfinished | Use the existing sanitized artifact or documentation. Do not launch a paid task and wait on stage. |
| Exclusion propagation/client ambiguity | Show the support limits. Mark tenant behavior unverified; do not attempt a bypass. |
| No metrics, incomplete window, 403/404 or expired link | Say **data unavailable for this scope/window**. Use synthetic output; never substitute zero activity. |
| No audit result | Explain scope, query, actor, permissions and time window. Use documentation, not a fabricated tenant event. |
| Billing page still shows a different contract/rollout | Display effective tenant plan and date. Do not force this kit's list-price example onto the contract. |
| More than 30 seconds spent troubleshooting | Switch to the prepared fallback and continue the clock. |

## Presenter prompts that do not require invoking an agent

- "Show me the effective policy and its owner, not merely the desired policy."
- "Which surface is this control protecting? What is explicitly outside it?"
- "What would we retain as evidence, and who may read it?"
- "Does this measure usage, delivery quality, financial cost, or an assumption?"
