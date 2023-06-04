<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_unassign_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Unassigns a registered instance from all layers that are using the instance

### Description

Unassigns a registered instance from all layers that are using the
instance. The instance remains in the stack as an unassigned instance,
and can be assigned to another layer as needed. You cannot use this
action with instances that were created with AWS OpsWorks Stacks.

**Required Permissions**: To use this action, an IAM user must have a
Manage permissions level for the stack or an attached policy that
explicitly grants permissions. For more information about user
permissions, see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_unassign_instance(InstanceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworks_unassign_instance_:_InstanceId">InstanceId</code></td>
<td><p>[required] The instance ID.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$unassign_instance(
      InstanceId = "string"
    )
