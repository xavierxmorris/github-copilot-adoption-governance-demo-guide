# Prioritized features: importance, demonstration and limits

**Checked 2026-10-21.** Priority reflects this session's order, not a claim that security is optional. P0 = establish before pilot; P1 = make the pilot operable; P2 = optimize after evidence exists. Business/Enterprise below means **Copilot** plans; an enterprise-account control is not automatically a Copilot Enterprise-only entitlement.

## 1. Governance and guardrails

| Priority / feature | Why it matters | What to demonstrate | Enforcement boundary / prerequisite | Evidence |
|---|---|---|---|---|
| P0: Enterprise/organization policy ownership | Prevents fragmented enablement and unowned exceptions | An inherited locked setting and an explicitly delegated setting | Enterprise decisions take precedence. Generally follows the licensed account, not everyone touching an org. Multiple-license conflict rules have exceptions. | [G01-G02](SOURCES.md#g01) |
| P0: Identity, licensed-account and repository scope | Prevents mistaking corporate licensing for control over every personal/third-party session | Identify which account receives the license and which repos accept agent work | A B/E license cancels that account's existing individual subscription; a separate personal account is a different boundary. Repository-wide cloud-agent blocks are a documented exception. | [G01](SOURCES.md#g01), [G10](SOURCES.md#g10) |
| P0: Models, previews and default availability | New capabilities can change the risk profile without a new rollout project | Explicit model decision, preview policy, released-model defaults, new-feature defaults | Feature-default activation announced for **22 Oct 2026**; released-model defaults are separate. Some models excluded from autoenablement. Code review may use models not enabled on Models page. | [G02-G03](SOURCES.md#g02), [G11](SOURCES.md#g11) |
| P0: MCP tool trust and managed restrictions | A tool can read/write data beyond the conversation | Current managed allow/deny settings and actual deployment coverage | GA preferred approach; built-in default servers allowed first. Other denies precede allows; all allowlist layers must match. Registry discovery alone is not restriction; third-party hosts have separate controls. | [G04-G06](SOURCES.md#g04) |
| P0: Cloud-agent enablement and repo selection | Moves from suggesting text to executing and changing code | User entitlement plus repo opt-out/access state | B/E cloud-agent access documented disabled by default. Once enabled, users can generally work across repos unless restricted. Partner agents need separate consideration. | [G02](SOURCES.md#g02), [G10](SOURCES.md#g10) |
| P0: Review, workflow approval and scoped credentials | Limits the effect of an unsafe generated change | PR diff, human attribution, required checks/review and approval state | Workflow approval defaults can be changed by admins. Native repo scope does not constrain a deliberately supplied broader credential. Never show secret values. | [G11-G13](SOURCES.md#g11) |
| P0: Data classification and content exclusion | Stops overclaiming that a single exclusion protects every interaction | A harmless pre-staged exclusion on a supported mode, or support table | Not universal DLP. VS Code Edit/Agent unsupported; CLI docs conflict; symlink/semantic-context limits. | [G07-G08](SOURCES.md#g07) |
| P1: Network/Internet access | Reduces uncontrolled outbound access from supported agent processes | Effective Internet access setting and allowlist owner | Integrated firewall excludes MCP processes/setup steps and other documented cases; Windows/self-hosted compatibility limits. Not an absolute exfiltration guarantee. | [G14](SOURCES.md#g14) |
| P1: Public-code matching/references | Helps manage provenance and licensing review | Effective public-code policy plus reference limitations | Not all public code is indexed; private/non-GitHub code excluded. Cloud agent/CLI may still generate matches when Block selected. No legal guarantee. | [G04](SOURCES.md#g04), [G11](SOURCES.md#g11), [G21](SOURCES.md#g21) |
| P1: Repository/organization instructions | Improves consistency of task behavior | A guidance example and an independent required check | Instructions are probabilistic, not permissions or mandatory compliance. Surface support/precedence differs. | [G09](SOURCES.md#g09) |

## 2. Usage, reporting and administration

| Priority / feature | Why it matters | What to demonstrate | Boundary / prerequisite | Evidence |
|---|---|---|---|---|
| P0: Seat inventory and lifecycle | Aligns license allocation, joiners/movers/leavers and review ownership | Seats versus observed usage; human review queue | Seat/activity APIs retain preview labels. `last_activity_at` is not a productivity or first-use measure. Paginate fully. | [M09-M10](SOURCES.md#m09) |
| P0: Usage dashboards and report access | Makes adoption decisions repeatable | Viewer role, metrics policy, scope, mature date window | GA usage reports; client/telemetry coverage matters; dashboard and API prerequisite wording differs. | [M01](SOURCES.md#m01), [M03-M07](SOURCES.md#m03) |
| P0: Current reporting API and export contract | Avoids building new integrations on retired endpoints | Request -> returned download links -> NDJSON | Download every file; signed URLs expire. Do not log/publish them. Legacy metrics retirement notice is not the retirement of all seat/billing APIs. | [M01-M02](SOURCES.md#m01) |
| P1: Adoption/engagement definitions | Prevents misleading percentages and employee rankings | Scope/window/denominator on every metric | IDE, CLI and other surfaces differ. Repeat-use is a kit definition, not GitHub's native cohort. Missing data is not zero. | [M04-M07](SOURCES.md#m04) |
| P1: Team and organization attribution | Enables appropriate enablement without double-counting | Explain daily membership joins and overlaps | Org metrics follow membership, not seat billing or repo location. User-teams threshold is five **seated**, not active, users. | [M04](SOURCES.md#m04), [M08](SOURCES.md#m08) |
| P0: AI-credit pool, budgets and billing | Prevents surprise spend and obsolete request-count estimates | Included pool, overage controls, correct billing entity | Current corporate credit model; additional usage enabled by default per docs. User budget and overage-control stop behavior differ. | [M11-M15](SOURCES.md#m11) |
| P2: Delivery-quality and feedback evaluation | Separates meaningful value from activity inflation | Baseline + review quality/rework + developer feedback | Acceptance, generated code and estimated dashboard ROI are not audited causal financial returns. | [A01-A02](SOURCES.md#a01), [M04](SOURCES.md#m04) |

## 3. Security, compliance and auditability

| Priority / feature | Why it matters | What to demonstrate | Boundary / prerequisite | Evidence |
|---|---|---|---|---|
| P0: Audit and artifact traceability | Makes control changes and agent work attributable | Copilot audit search, signed commit, initiating user, session link | Enterprise audit role; documented 180-day Copilot audit retention. Not a transcript of all local prompts. | [G11](SOURCES.md#g11), [G15](SOURCES.md#g15) |
| P0: Data-use and retention assessment | Answers what leaves the environment and why | Surface/data-flow inventory, not a blanket assurance slide | B/E no-training commitment differs from retention, telemetry, feedback and third-party/BYOK processing. | [G11](SOURCES.md#g11), [G16-G18](SOURCES.md#g16) |
| P0 when required: Regional processing | Critical for data-location requirements | Actual eligible environment, compliant-model restriction and client support | Requires GHE Cloud with data residency; documented US/EU support. Restriction off by default. Not every Enterprise customer/region qualifies. | [G19](SOURCES.md#g19) |
| P0: Contract, preview and indemnity review | Prevents marketing claims replacing legal review | Current agreement, channel, subprocessors, required mitigations and preview scope | Old Copilot terms deprecated for new/renewed subscriptions from 5 Mar 2026. IP protection is conditional, not all-output insurance. | [G16-G20](SOURCES.md#g16) |

## Recommended minimum pilot baseline

Central ownership, explicit feature/model decisions, approved client/tool coverage, narrow repository/credential access, maintained human review and checks, defined data classes, audit retention owner, read-only reporting access, spend stop behavior, and a tested incident/disable process.

This is a **recommended operating baseline**, not a statement that GitHub automatically configures all of it.
