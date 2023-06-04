<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_delete_work_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the workgroup with the specified name

### Description

Deletes the workgroup with the specified name. The primary workgroup
cannot be deleted.

### Usage

    athena_delete_work_group(WorkGroup, RecursiveDeleteOption)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="athena_delete_work_group_:_WorkGroup">WorkGroup</code></td>
<td><p>[required] The unique name of the workgroup to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="athena_delete_work_group_:_RecursiveDeleteOption">RecursiveDeleteOption</code></td>
<td><p>The option to delete the workgroup and its contents even if the
workgroup contains any named queries, query executions, or
notebooks.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_work_group(
      WorkGroup = "string",
      RecursiveDeleteOption = TRUE|FALSE
    )
