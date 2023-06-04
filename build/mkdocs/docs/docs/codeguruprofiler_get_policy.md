<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeguruprofiler_get_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the JSON-formatted resource-based policy on a profiling group

### Description

Returns the JSON-formatted resource-based policy on a profiling group.

### Usage

    codeguruprofiler_get_policy(profilingGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeguruprofiler_get_policy_:_profilingGroupName">profilingGroupName</code></td>
<td><p>[required] The name of the profiling group.</p></td>
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

    svc$get_policy(
      profilingGroupName = "string"
    )
