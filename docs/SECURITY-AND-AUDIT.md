# Security, compliance and auditability

**Documentary evidence checked 2026-10-21. Not a legal opinion or tenant certification.** Use [source IDs](SOURCES.md) to distinguish GitHub's documented behavior from this kit's operating recommendations.

## A control is only meaningful with its scope

| Layer | What to inspect | What it does not establish |
|---|---|---|
| Licensed-account policy | Effective enterprise/org setting and source of license | Control over every separate personal account or third-party host |
| Repository agent access | Repository permitted/opted out; native actor permissions | Restrictions on data reachable through deliberately supplied credentials |
| Client/device management | Supported clients, deployed managed settings, verified effect | That every unmanaged client or surface implements the same restriction |
| Tool authorization | Approved MCP server identity, credentials, scopes and owner | That discovery/allowlisting makes all tool actions or data handling safe |
| Network | Applicable Internet access/firewall settings and exception owner | Complete coverage of MCP processes, setup steps or all execution environments |
| Review gates | Actual repository checks, reviews and workflow approval state | That instructions or an AI review alone guarantee secure code |

Sources: [G01](SOURCES.md#g01), [G05-G06](SOURCES.md#g05), [G10-G14](SOURCES.md#g10).

## Read-only cloud-agent PR walk-through

Use a disposable, approved repository and an already-completed task.

1. Identify the initiating human and signed Copilot commit. Open the linked session only if its contents are approved for this audience.
2. Inspect the diff, particularly workflow/configuration changes. Show required checks and independent human review on the actual repository.
3. Inspect existing workflow-approval status. The default approval requirement can be disabled by an administrator; do not narrate it as immutable.
4. Inspect native access and intended repository. Distinguish this from credentials added for package registries, deployment or MCP.
5. Inspect **Agents secrets and variables** names/scopes only. Current docs describe migration from the older Actions `copilot` environment; old walkthroughs can be misleading.
6. Inspect Internet access/firewall settings and exception ownership. State coverage exclusions rather than testing an escape.

The application card documents native pushes to the relevant PR branch/new `copilot/` branch, not directly to default; do not extrapolate a universal "no agent can ever merge" claim to every feature and configuration. Current dedicated how-tos take precedence over older application-card descriptions of secrets and configurable workflow approval. [G11-G14](SOURCES.md#g11)

**Important:** agent setup failure is not a reliable fail-closed policy gate; the agent may start work after a setup-step failure. Required enforcement belongs in independently controlled permissions/checks. [G22](SOURCES.md#g22)

## Content exclusion and public-code matching

Content exclusion is supported on specified surfaces, including documented inline completions and VS Code Chat, but VS Code Edit/Agent modes are explicitly unsupported. Symlinks, remote filesystems and indirect semantic context have limitations. GitHub.com/Mobile support is marked preview. [G07-G08](SOURCES.md#g07)

**Unresolved official conflict:** the concepts table marks CLI supported, while the configuration guide says CLI does not support exclusions. Do not rely on CLI exclusion for compliance until GitHub clarifies and the exact client is tested. Do not infer cloud-agent-wide DLP from a website-wide table.

Public-code references cover indexed public GitHub code, not every source or license. Cloud agent/CLI may still generate matches despite Block. References/filtering are review aids, not a guarantee of non-infringement. [G04](SOURCES.md#g04), [G11](SOURCES.md#g11), [G21](SOURCES.md#g21)

## Audit evidence is not universal prompt logging

The Copilot enterprise audit documentation describes policy/settings/license changes and agent activity on GitHub, with **180-day retention**. Suggested documented searches:

```text
action:copilot
actor:Copilot
```

These are search filters, not an exhaustive detection rule or exact event-action schema. Inspect the returned action/actor and approved dates. GitHub recommends streaming to a SIEM for longer history; confirm enterprise eligibility, event coverage, destination access and retention. [G15](SOURCES.md#g15)

Local client prompts are explicitly outside this Copilot audit-log coverage. Hooks/client logging, agent session logs, PR history and SIEM records are different evidence sources with their own data sensitivity and retention. A signed commit/session link does not establish immutable indefinite transcript retention.

Recommended evidence chain:

```text
approved request -> effective policy and scope -> initiating identity
-> agent artifact/session reference -> reviewed diff -> checks/approval
-> merged change or rejected outcome -> retained audit/evidence reference
```

This chain is a proposed evidence model. Verify which links exist in your tenant and store them privately.

## Data-use, retention and contractual boundaries

| Question | Defensible wording | What to verify |
|---|---|---|
| Is corporate data used for training? | GitHub publishes a Business/Enterprise no-training commitment; current terms include qualifications concerning documented customer instructions. | Applicable plan/agreement and any explicit instructions; distinguish separate personal accounts. |
| Does no training mean zero retention? | **No.** Published B/E defaults distinguish IDE Chat/completions, other use, engagement data and feedback. | Each feature/provider, settings, telemetry and feedback path. |
| What are the published defaults? | FAQ states no retained prompts/suggestions for B/E IDE Chat/completions, 28 days for other access/use, two years for engagement data, and purpose-dependent feedback retention. | These are published defaults, not a promise covering every new agent/provider/configuration. Recheck before quoting. |
| Is every preview covered by the DPA? | DPA excludes previews unless expressly designated as covered. | Exact preview, applicable terms and permitted data classifications. |
| Does Enterprise mean regional processing? | No. Current docs specify eligible GHE Cloud with data residency, US/EU regions, compatible clients and the compliant-model restriction. | Actual environment and policy, disabled by default; connected third parties assessed separately. |
| Does BYOK inherit all GitHub protections? | Not automatically. CLI BYOK sends prompts/code/responses directly to the configured provider per the application card. | Provider contract, processing, retention, network and credentials. |
| Is all output indemnified? | No. Defense/indemnity depends on underlying agreement, channel, applicable mitigations and exclusions. | Counsel reviews purchasing channel (including Microsoft), required mitigations and contract terms. |

Sources: [G11](SOURCES.md#g11), [G16-G20](SOURCES.md#g16). Do not substitute archived product terms for the current agreement: old Copilot-specific terms were deprecated for new subscriptions/renewals from **5 March 2026**.

## Incident and exception ownership

Recommended pre-pilot agreement: who can pause access, disable a feature, revoke a tool credential, preserve evidence and notify the incident/privacy/legal teams? Record authorized exception scope, expiry, approver and compensating controls. Test the response process with a tabletop, not live data exposure.

Never promise "SOC/ISO compliant for this use case" from a product feature list. Obtain current applicable assurance reports and mappings through approved channels; determine service, region, model, preview and contract scope with your assessors.
