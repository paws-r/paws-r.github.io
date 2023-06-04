<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeguruprofiler_delete_profiling_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a profiling group

### Description

Deletes a profiling group.

### Usage

    codeguruprofiler_delete_profiling_group(profilingGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeguruprofiler_delete_profiling_group_:_profilingGroupName">profilingGroupName</code></td>
<td><p>[required] The name of the profiling group to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_profiling_group(
      profilingGroupName = "string"
    )
