<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_start_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a specified instance

### Description

Starts a specified instance. For more information, see [Starting,
Stopping, and Rebooting
Instances](https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html).

**Required Permissions**: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user permissions,
see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_start_instance(InstanceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworks_start_instance_:_InstanceId">InstanceId</code></td>
<td><p>[required] The instance ID.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$start_instance(
      InstanceId = "string"
    )
