<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_deregister_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deregister a registered Amazon EC2 or on-premises instance

### Description

Deregister a registered Amazon EC2 or on-premises instance. This action
removes the instance from the stack and returns it to your control. This
action cannot be used with instances that were created with AWS OpsWorks
Stacks.

**Required Permissions**: To use this action, an IAM user must have a
Manage permissions level for the stack or an attached policy that
explicitly grants permissions. For more information on user permissions,
see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_deregister_instance(InstanceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworks_deregister_instance_:_InstanceId">InstanceId</code></td>
<td><p>[required] The instance ID.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$deregister_instance(
      InstanceId = "string"
    )
