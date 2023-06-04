<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_delete_workteam</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an existing work team

### Description

Deletes an existing work team. This operation can't be undone.

### Usage

    sagemaker_delete_workteam(WorkteamName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_delete_workteam_:_WorkteamName">WorkteamName</code></td>
<td><p>[required] The name of the work team to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Success = TRUE|FALSE
    )

### Request syntax

    svc$delete_workteam(
      WorkteamName = "string"
    )
