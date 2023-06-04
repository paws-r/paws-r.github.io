<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_stop_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops a specified instance

### Description

Stops a specified instance. When you stop a standard instance, the data
disappears and must be reinstalled when you restart the instance. You
can stop an Amazon EBS-backed instance without losing data. For more
information, see [Starting, Stopping, and Rebooting
Instances](https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html).

**Required Permissions**: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user permissions,
see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_stop_instance(InstanceId, Force)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworks_stop_instance_:_InstanceId">InstanceId</code></td>
<td><p>[required] The instance ID.</p></td>
</tr>
<tr class="even">
<td><code id="opsworks_stop_instance_:_Force">Force</code></td>
<td><p>Specifies whether to force an instance to stop. If the instance's
root device type is <code>ebs</code>, or EBS-backed, adding the
<code>Force</code> parameter to the <code>StopInstances</code> API call
disassociates the AWS OpsWorks Stacks instance from EC2, and forces
deletion of <em>only</em> the OpsWorks Stacks instance. You must also
delete the formerly-associated instance in EC2 after troubleshooting and
replacing the AWS OpsWorks Stacks instance with a new one.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_instance(
      InstanceId = "string",
      Force = TRUE|FALSE
    )
