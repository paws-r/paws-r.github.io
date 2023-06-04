<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_delete_change_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified change set

### Description

Deletes the specified change set. Deleting change sets ensures that no
one executes the wrong change set.

If the call successfully completes, CloudFormation successfully deleted
the change set.

If `IncludeNestedStacks` specifies `True` during the creation of the
nested change set, then `delete_change_set` will delete all change sets
that belong to the stacks hierarchy and will also delete all change sets
for nested stacks with the status of `REVIEW_IN_PROGRESS`.

### Usage

    cloudformation_delete_change_set(ChangeSetName, StackName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_delete_change_set_:_ChangeSetName">ChangeSetName</code></td>
<td><p>[required] The name or Amazon Resource Name (ARN) of the change
set that you want to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_delete_change_set_:_StackName">StackName</code></td>
<td><p>If you specified the name of a change set to delete, specify the
stack name or Amazon Resource Name (ARN) that's associated with
it.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_change_set(
      ChangeSetName = "string",
      StackName = "string"
    )
