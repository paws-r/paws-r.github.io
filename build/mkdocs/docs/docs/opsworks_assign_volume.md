<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_assign_volume</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Assigns one of the stack's registered Amazon EBS volumes to a specified instance

### Description

Assigns one of the stack's registered Amazon EBS volumes to a specified
instance. The volume must first be registered with the stack by calling
`register_volume`. After you register the volume, you must call
`update_volume` to specify a mount point before calling `assign_volume`.
For more information, see [Resource
Management](https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

**Required Permissions**: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user permissions,
see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_assign_volume(VolumeId, InstanceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="opsworks_assign_volume_:_VolumeId">VolumeId</code></td>
<td><p>[required] The volume ID.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_assign_volume_:_InstanceId">InstanceId</code></td>
<td><p>The instance ID.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$assign_volume(
      VolumeId = "string",
      InstanceId = "string"
    )
