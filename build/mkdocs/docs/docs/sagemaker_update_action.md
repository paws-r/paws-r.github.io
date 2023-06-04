<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_update_action</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an action

### Description

Updates an action.

### Usage

    sagemaker_update_action(ActionName, Description, Status, Properties,
      PropertiesToRemove)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_update_action_:_ActionName">ActionName</code></td>
<td><p>[required] The name of the action to update.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_action_:_Description">Description</code></td>
<td><p>The new description for the action.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_update_action_:_Status">Status</code></td>
<td><p>The new status for the action.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_action_:_Properties">Properties</code></td>
<td><p>The new list of properties. Overwrites the current property
list.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_update_action_:_PropertiesToRemove">PropertiesToRemove</code></td>
<td><p>A list of properties to remove.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ActionArn = "string"
    )

### Request syntax

    svc$update_action(
      ActionName = "string",
      Description = "string",
      Status = "Unknown"|"InProgress"|"Completed"|"Failed"|"Stopping"|"Stopped",
      Properties = list(
        "string"
      ),
      PropertiesToRemove = list(
        "string"
      )
    )
