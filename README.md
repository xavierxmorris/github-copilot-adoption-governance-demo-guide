# GitHub Copilot: adoption, governance and security

**A 30-minute, governance-first demonstration and discovery kit.**

Research checked **21 October 2026** against official GitHub documentation, current terms and dated announcements. This is a separate reference/demo repository, not a production policy deployment.

## Start here

| Need | Open |
|---|---|
| Deliver the session | [30-minute run sheet](RUN-SHEET.md) |
| Prepare permissions, tabs and fallbacks | [Preflight](docs/PREFLIGHT.md) |
| Ask the right questions | [Discovery questions](docs/DISCOVERY-QUESTIONS.md) |
| Understand what matters and why | [Prioritized feature matrix](docs/FEATURE-MATRIX.md) |
| Explain data protection and audit boundaries | [Security and evidence](docs/SECURITY-AND-AUDIT.md) |
| Explain reporting, APIs and cost | [Metrics and administration](docs/METRICS-AND-ADMIN.md) |
| Turn the demo into adoption | [Pilot operating model](docs/ADOPTION-PLAN.md) |
| Reuse slide headlines | [Eight-slide talk track](docs/PRESENTATION.md) |
| Trace claims and resolve conflicts | [Research](docs/RESEARCH.md) and [source register](docs/SOURCES.md) |

## The 30-minute allocation

| Minutes | Topic | Intended outcome |
|---|---|---|
| 0-2 | Frame the decision | Agree which repositories, people and workflows are in scope. |
| 2-17 | **1. Governance and guardrails** | Establish policy ownership and prove the boundaries of controls. |
| 17-24 | **2. Usage, reporting and administration** | Separate entitlement, observed adoption and spend. |
| 24-28 | **3. Security, compliance and auditability** | Identify evidence and remaining contractual/technical gaps. |
| 28-30 | Decide | Name an owner, pilot scope, success measures and stop conditions. |

The timeline includes transitions and questions. It is not a 30-minute coding exercise: use a pre-staged agent PR rather than waiting for generation.

## Run the safe, offline demonstration

From the repository root in PowerShell:

```powershell
.\scripts\Show-Demo.ps1
.\scripts\Show-Demo.ps1 -Check
```

No packages, credentials, network access, paid usage or administrator role are needed. The script reads [an invented kit dataset](fixtures/synthetic-demo.json); it does not query GitHub, deploy controls or remove seats. Its output demonstrates arithmetic, not GitHub dashboard rendering.

Expected: 8 eligible seats, 6 observed IDE-active users, 75% observed utilization, 4 repeat users out of 6 active users, 40% completion acceptance, and 2 seats suggested for human review. A **separate** 100-seat, completed-calendar-month cost example estimates $200 overage; it is not the billing scope of the eight-person adoption cohort.

For a real tenant, follow the preflight and substitute only approved, sanitized, read-only views. Keep exports, employee identifiers, session transcripts and signed report-download URLs out of this public repository.

## Most important conclusions

- **Policy scope matters more than the number of toggles.** Enterprise decisions can constrain organization settings, but licensing, repository access, device controls and third-party tools have different boundaries.
- **Instructions are not enforcement.** Combine effective policies, permissions, approved tools, credential scope, review and required checks.
- **Content exclusion is not universal DLP.** Surface support differs; official CLI documentation currently conflicts.
- **Assigned seats, activity and billing are separate evidence sources.** Missing telemetry is not proof of inactivity; usage is not proof of productivity.
- **Audit history is not a transcript of every prompt.** No-training commitments are not zero-retention or universal residency commitments.

## Time-sensitive facts to recheck before presenting

On the research date, GitHub says the **default policy for new features activates starting 22 October 2026**. Do not describe that announced future behavior as active on 21 October. New-model defaults are a separate control. [G03](docs/SOURCES.md#g03)

The preferred MCP restriction mechanism is now the **GA managed-settings allow/deny approach**; the registry-based restriction approach remains preview and is no longer recommended for this purpose. [G05-G06](docs/SOURCES.md#g05)

Current corporate billing uses pooled **AI credits**, not old Business/Enterprise premium-request allowances. New usage-report APIs replace the legacy metrics APIs whose announced retirement dates have passed. [M01-M03](docs/SOURCES.md#m01), [M11-M15](docs/SOURCES.md#m11)

## Honesty notes

This is documentary research plus an executable synthetic rehearsal. It is **not** a tenant validation, penetration test, legal opinion, certification or a measured ROI study. Preview labels, UI navigation, models and billing can change. Contradictory documentation and unverified client enforcement are explicitly recorded in [RESEARCH.md](docs/RESEARCH.md).

Research agents used **max reasoning effort**. The parent session's selected model, effort and context settings were not changed.
