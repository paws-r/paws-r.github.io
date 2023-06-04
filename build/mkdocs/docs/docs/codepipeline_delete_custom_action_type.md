<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codepipeline_delete_custom_action_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Marks a custom action as deleted

### Description

Marks a custom action as deleted. `poll_for_jobs` for the custom action
fails after the action is marked for deletion. Used for custom actions
only.

To re-create a custom action after it has been deleted you must use a
string in the version field that has never been used before. This string
can be an incremented version number, for example. To restore a deleted
custom action, use a JSON file that is identical to the deleted action,
including the original string in the version field.

### Usage

    codepipeline_delete_custom_action_type(category, provider, version)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codepipeline_delete_custom_action_type_:_category">category</code></td>
<td><p>[required] The category of the custom action that you want to
delete, such as source or deploy.</p></td>
</tr>
<tr class="even">
<td><code
id="codepipeline_delete_custom_action_type_:_provider">provider</code></td>
<td><p>[required] The provider of the service used in the custom action,
such as CodeDeploy.</p></td>
</tr>
<tr class="odd">
<td><code
id="codepipeline_delete_custom_action_type_:_version">version</code></td>
<td><p>[required] The version of the custom action to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_custom_action_type(
      category = "Source"|"Build"|"Deploy"|"Test"|"Invoke"|"Approval",
      provider = "string",
      version = "string"
    )
