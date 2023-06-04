<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>efs_describe_mount_targets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the descriptions of all the current mount targets, or a specific mount target, for a file system

### Description

Returns the descriptions of all the current mount targets, or a specific
mount target, for a file system. When requesting all of the current
mount targets, the order of mount targets returned in the response is
unspecified.

This operation requires permissions for the
`elasticfilesystem:DescribeMountTargets` action, on either the file
system ID that you specify in `FileSystemId`, or on the file system of
the mount target that you specify in `MountTargetId`.

### Usage

    efs_describe_mount_targets(MaxItems, Marker, FileSystemId,
      MountTargetId, AccessPointId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="efs_describe_mount_targets_:_MaxItems">MaxItems</code></td>
<td><p>(Optional) Maximum number of mount targets to return in the
response. Currently, this number is automatically set to 10, and other
values are ignored. The response is paginated at 100 per page if you
have more than 100 mount targets.</p></td>
</tr>
<tr class="even">
<td><code id="efs_describe_mount_targets_:_Marker">Marker</code></td>
<td><p>(Optional) Opaque pagination token returned from a previous
<code>describe_mount_targets</code> operation (String). If present, it
specifies to continue the list from where the previous returning call
left off.</p></td>
</tr>
<tr class="odd">
<td><code
id="efs_describe_mount_targets_:_FileSystemId">FileSystemId</code></td>
<td><p>(Optional) ID of the file system whose mount targets you want to
list (String). It must be included in your request if an
<code>AccessPointId</code> or <code>MountTargetId</code> is not
included. Accepts either a file system ID or ARN as input.</p></td>
</tr>
<tr class="even">
<td><code
id="efs_describe_mount_targets_:_MountTargetId">MountTargetId</code></td>
<td><p>(Optional) ID of the mount target that you want to have described
(String). It must be included in your request if
<code>FileSystemId</code> is not included. Accepts either a mount target
ID or ARN as input.</p></td>
</tr>
<tr class="odd">
<td><code
id="efs_describe_mount_targets_:_AccessPointId">AccessPointId</code></td>
<td><p>(Optional) The ID of the access point whose mount targets that
you want to list. It must be included in your request if a
<code>FileSystemId</code> or <code>MountTargetId</code> is not included
in your request. Accepts either an access point ID or ARN as
input.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Marker = "string",
      MountTargets = list(
        list(
          OwnerId = "string",
          MountTargetId = "string",
          FileSystemId = "string",
          SubnetId = "string",
          LifeCycleState = "creating"|"available"|"updating"|"deleting"|"deleted"|"error",
          IpAddress = "string",
          NetworkInterfaceId = "string",
          AvailabilityZoneId = "string",
          AvailabilityZoneName = "string",
          VpcId = "string"
        )
      ),
      NextMarker = "string"
    )

### Request syntax

    svc$describe_mount_targets(
      MaxItems = 123,
      Marker = "string",
      FileSystemId = "string",
      MountTargetId = "string",
      AccessPointId = "string"
    )

### Examples

    ## Not run: 
    # This operation describes all of a file system's mount targets.
    svc$describe_mount_targets(
      FileSystemId = "fs-01234567"
    )

    ## End(Not run)
