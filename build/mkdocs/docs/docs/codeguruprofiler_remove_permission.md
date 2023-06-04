<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeguruprofiler_remove_permission</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes permissions from a profiling group's resource-based policy that are provided using an action group

### Description

Removes permissions from a profiling group's resource-based policy that
are provided using an action group. The one supported action group that
can be removed is `agentPermission` which grants `configure_agent` and
`PostAgent` permissions. For more information, see [Resource-based
policies in CodeGuru
Profiler](https://docs.aws.amazon.com/codeguru/latest/profiler-ug/resource-based-policies.html)
in the *Amazon CodeGuru Profiler User Guide*,
[`configure_agent`](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ConfigureAgent.html)
, and
[`post_agent_profile`](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_PostAgentProfile.html)
.

### Usage

    codeguruprofiler_remove_permission(actionGroup, profilingGroupName,
      revisionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeguruprofiler_remove_permission_:_actionGroup">actionGroup</code></td>
<td><p>[required] Specifies an action group that contains the
permissions to remove from a profiling group's resource-based policy.
One action group is supported, <code>agentPermissions</code>, which
grants <code>configure_agent</code> and <code>post_agent_profile</code>
permissions.</p></td>
</tr>
<tr class="even">
<td><code
id="codeguruprofiler_remove_permission_:_profilingGroupName">profilingGroupName</code></td>
<td><p>[required] The name of the profiling group.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeguruprofiler_remove_permission_:_revisionId">revisionId</code></td>
<td><p>[required] A universally unique identifier (UUID) for the
revision of the resource-based policy from which you want to remove
permissions.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      policy = "string",
      revisionId = "string"
    )

### Request syntax

    svc$remove_permission(
      actionGroup = "agentPermissions",
      profilingGroupName = "string",
      revisionId = "string"
    )
