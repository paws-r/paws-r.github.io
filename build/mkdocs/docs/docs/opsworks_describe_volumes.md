<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_describe_volumes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes an instance's Amazon EBS volumes

### Description

Describes an instance's Amazon EBS volumes.

This call accepts only one resource-identifying parameter.

**Required Permissions**: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information about
user permissions, see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_describe_volumes(InstanceId, StackId, RaidArrayId, VolumeIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworks_describe_volumes_:_InstanceId">InstanceId</code></td>
<td><p>The instance ID. If you use this parameter,
<code>describe_volumes</code> returns descriptions of the volumes
associated with the specified instance.</p></td>
</tr>
<tr class="even">
<td><code id="opsworks_describe_volumes_:_StackId">StackId</code></td>
<td><p>A stack ID. The action describes the stack's registered Amazon
EBS volumes.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_describe_volumes_:_RaidArrayId">RaidArrayId</code></td>
<td><p>The RAID array ID. If you use this parameter,
<code>describe_volumes</code> returns descriptions of the volumes
associated with the specified RAID array.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_describe_volumes_:_VolumeIds">VolumeIds</code></td>
<td><p>Am array of volume IDs. If you use this parameter,
<code>describe_volumes</code> returns descriptions of the specified
volumes. Otherwise, it returns a description of every volume.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Volumes = list(
        list(
          VolumeId = "string",
          Ec2VolumeId = "string",
          Name = "string",
          RaidArrayId = "string",
          InstanceId = "string",
          Status = "string",
          Size = 123,
          Device = "string",
          MountPoint = "string",
          Region = "string",
          AvailabilityZone = "string",
          VolumeType = "string",
          Iops = 123,
          Encrypted = TRUE|FALSE
        )
      )
    )

### Request syntax

    svc$describe_volumes(
      InstanceId = "string",
      StackId = "string",
      RaidArrayId = "string",
      VolumeIds = list(
        "string"
      )
    )
