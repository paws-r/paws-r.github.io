<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_unassign_volume</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Unassigns an assigned Amazon EBS volume

### Description

Unassigns an assigned Amazon EBS volume. The volume remains registered
with the stack. For more information, see [Resource
Management](https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

**Required Permissions**: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user permissions,
see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_unassign_volume(VolumeId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="opsworks_unassign_volume_:_VolumeId">VolumeId</code></td>
<td><p>[required] The volume ID.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$unassign_volume(
      VolumeId = "string"
    )
