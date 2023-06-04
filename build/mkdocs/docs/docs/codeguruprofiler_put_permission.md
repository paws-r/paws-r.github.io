<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeguruprofiler_put_permission</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds permissions to a profiling group's resource-based policy that are provided using an action group

### Description

Adds permissions to a profiling group's resource-based policy that are
provided using an action group. If a profiling group doesn't have a
resource-based policy, one is created for it using the permissions in
the action group and the roles and users in the `principals` parameter.

     <p> The one supported action group that can be added is <code>agentPermission</code> which grants <code>ConfigureAgent</code> and <code>PostAgent</code> permissions. For more information, see <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-ug/resource-based-policies.html">Resource-based policies in CodeGuru Profiler</a> in the <i>Amazon CodeGuru Profiler User Guide</i>, <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ConfigureAgent.html"> <code>ConfigureAgent</code> </a>, and <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_PostAgentProfile.html"> <code>PostAgentProfile</code> </a>. </p> <p> The first time you call <code>PutPermission</code> on a profiling group, do not specify a <code>revisionId</code> because it doesn't have a resource-based policy. Subsequent calls must provide a <code>revisionId</code> to specify which revision of the resource-based policy to add the permissions to. </p> <p> The response contains the profiling group's JSON-formatted resource policy. </p> 

### Usage

    codeguruprofiler_put_permission(actionGroup, principals,
      profilingGroupName, revisionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeguruprofiler_put_permission_:_actionGroup">actionGroup</code></td>
<td><p>[required] Specifies an action group that contains permissions to
add to a profiling group resource. One action group is supported,
<code>agentPermissions</code>, which grants permission to perform
actions required by the profiling agent, <code>configure_agent</code>
and <code>post_agent_profile</code> permissions.</p></td>
</tr>
<tr class="even">
<td><code
id="codeguruprofiler_put_permission_:_principals">principals</code></td>
<td><p>[required] A list ARNs for the roles and users you want to grant
access to the profiling group. Wildcards are not are supported in the
ARNs.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeguruprofiler_put_permission_:_profilingGroupName">profilingGroupName</code></td>
<td><p>[required] The name of the profiling group to grant access
to.</p></td>
</tr>
<tr class="even">
<td><code
id="codeguruprofiler_put_permission_:_revisionId">revisionId</code></td>
<td><p>A universally unique identifier (UUID) for the revision of the
policy you are adding to the profiling group. Do not specify this when
you add permissions to a profiling group for the first time. If a policy
already exists on the profiling group, you must specify the
<code>revisionId</code>.</p></td>
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

    svc$put_permission(
      actionGroup = "agentPermissions",
      principals = list(
        "string"
      ),
      profilingGroupName = "string",
      revisionId = "string"
    )
