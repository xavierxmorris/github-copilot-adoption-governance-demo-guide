# Preflight and presenter preparation

## Choose the mode

**Default: public docs + offline synthetic rehearsal.** Live tenant mode is optional and requires explicit authorization. Publication of this kit does not authorize copying tenant evidence into it.

Prepare the [GitHub step-by-step walkthrough](../GITHUB-STEP-BY-STEP.md) alongside the run sheet. Its read-only paths distinguish enterprise **AI controls**, organization/repository **Settings**, and **Billing & Licensing**; do not substitute personal-account settings for a missing enterprise view.

| Surface | What access/evidence is needed | Safe fallback |
|---|---|---|
| Enterprise policies | Enterprise owner or applicable delegated AI-controls permission; approved enterprise | Official policy concepts/how-to |
| Organization policies | Organization owner; inherited setting visible | Official org-policy how-to |
| Managed MCP settings | Applicable enterprise owner/device-management owner; identify actual client deployment | Public managed-settings documentation only |
| Content exclusion | Authorized repository/org/enterprise administrator; supported client/mode; pre-existing harmless fixture | Support matrix and limitations |
| Cloud-agent PR | Approved disposable repo, pre-staged PR/session, rights to inspect checks/settings | Sanitized artifact or official agent docs |
| Usage dashboard | Usage-metrics policy; eligible viewer role; supported clients/telemetry; mature date window | Offline demo |
| Report APIs | Appropriate owner/custom role plus documented token scope, independently checked | Read-only endpoint templates in metrics guide |
| Billing | Billing reader/manager appropriate to account and endpoint | Separate synthetic cost example |
| Audit | Enterprise owner or Read enterprise audit logs role; approved time range | Official audit documentation |

Sources and precise scope: [source register](SOURCES.md). Do not assume organization ownership grants every enterprise capability.

## Day-before checklist

- Confirm audience, target decision and whether the account is Business, Enterprise, a personal plan or a mixture.
- Confirm which enterprise and licensing organization govern the demonstration account. Do not change `gh` accounts as part of the presentation.
- Recheck **feature-default activation, MCP restrictions, model controls, cloud-agent settings, terms, report schemas and billing** against linked sources.
- Check whether enterprise-teams model access is already enabled; organization model settings are unavailable in that preview mode.
- Prepare eight tabs: policy hierarchy; models/defaults; MCP; exclusion limits; agent PR/settings; usage/report API; billing; audit/privacy.
- Obtain permission for every displayed tenant page. Close unrelated tabs/notifications and use a clean browser profile.
- Keep tokens, raw exports, private repo names, employee logins, prompts, secret values and signed download links off-screen/off-recording.
- Verify real client/version support rather than assuming a central policy deploys everywhere. Record missing coverage privately.
- For managed client guardrails, distinguish selected configuration source, valid JSON, delivered settings and tested enforcement. Check per-property, harness and minimum-version requirements.
- If demonstrating exclusion, use only harmless synthetic text and configure/test in advance.
- Use the [off-clock exclusion rehearsal](../GITHUB-STEP-BY-STEP.md#optional-off-clock-exclusion-rehearsal) for the exact sequence and comparison test; do not turn it into an on-stage configuration change.
- Prepare a pre-staged agent PR; inspect its diff, attribution, checks and workflow approval state. Do not disable existing safeguards.
- Use completed report days; conservatively allow three full UTC days. Note official two-versus-three-day documentation conflict.
- Verify report numerator and seat denominator refer to the same population. Use the billing entity for billing.
- Run the offline demo and `-Check`. Rehearse once with a 30-minute timer.

## Ten minutes before

Run from the repository root:

```powershell
.\scripts\Show-Demo.ps1 -Check
.\scripts\Show-Demo.ps1
```

Confirm no live command, destructive action, paid model request or secret-revealing screen is needed. Set a 30-second troubleshooting limit.

## What not to do on stage

Do not enable a feature, broaden access, change budgets, remove a license, deploy managed settings, reveal credentials, approve a workflow, merge a PR or test exfiltration. Read-only inspection is enough to show the governance story.

Required human approvals, branch protection/rulesets and checks must be inspected on the actual repository. Do not claim the kit has configured them.

## Private evidence checklist

For each control collect, outside this public repo: capture date, owner/approver, scope, effective setting, inheritance, tested client/version, approved evidence link, known exception, retention period and next review date. Mark each item **documented**, **configured**, **tested**, or **unverified**; these are not interchangeable.
