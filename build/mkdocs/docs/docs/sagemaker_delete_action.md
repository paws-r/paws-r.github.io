<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_delete_action</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an action

### Description

Deletes an action.

### Usage

    sagemaker_delete_action(ActionName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_delete_action_:_ActionName">ActionName</code></td>
<td><p>[required] The name of the action to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ActionArn = "string"
    )

### Request syntax

    svc$delete_action(
      ActionName = "string"
    )
