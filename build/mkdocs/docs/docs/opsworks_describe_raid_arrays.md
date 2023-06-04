<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_describe_raid_arrays</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describe an instance's RAID arrays

### Description

Describe an instance's RAID arrays.

This call accepts only one resource-identifying parameter.

**Required Permissions**: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information about
user permissions, see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_describe_raid_arrays(InstanceId, StackId, RaidArrayIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworks_describe_raid_arrays_:_InstanceId">InstanceId</code></td>
<td><p>The instance ID. If you use this parameter,
<code>describe_raid_arrays</code> returns descriptions of the RAID
arrays associated with the specified instance.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_describe_raid_arrays_:_StackId">StackId</code></td>
<td><p>The stack ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_describe_raid_arrays_:_RaidArrayIds">RaidArrayIds</code></td>
<td><p>An array of RAID array IDs. If you use this parameter,
<code>describe_raid_arrays</code> returns descriptions of the specified
arrays. Otherwise, it returns a description of every array.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RaidArrays = list(
        list(
          RaidArrayId = "string",
          InstanceId = "string",
          Name = "string",
          RaidLevel = 123,
          NumberOfDisks = 123,
          Size = 123,
          Device = "string",
          MountPoint = "string",
          AvailabilityZone = "string",
          CreatedAt = "string",
          StackId = "string",
          VolumeType = "string",
          Iops = 123
        )
      )
    )

### Request syntax

    svc$describe_raid_arrays(
      InstanceId = "string",
      StackId = "string",
      RaidArrayIds = list(
        "string"
      )
    )
