<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>efs_describe_mount_target_security_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the security groups currently in effect for a mount target

### Description

Returns the security groups currently in effect for a mount target. This
operation requires that the network interface of the mount target has
been created and the lifecycle state of the mount target is not
`deleted`.

This operation requires permissions for the following actions:

-   `elasticfilesystem:DescribeMountTargetSecurityGroups` action on the
    mount target's file system.

-   `ec2:DescribeNetworkInterfaceAttribute` action on the mount target's
    network interface.

### Usage

    efs_describe_mount_target_security_groups(MountTargetId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="efs_describe_mount_target_security_groups_:_MountTargetId">MountTargetId</code></td>
<td><p>[required] The ID of the mount target whose security groups you
want to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SecurityGroups = list(
        "string"
      )
    )

### Request syntax

    svc$describe_mount_target_security_groups(
      MountTargetId = "string"
    )

### Examples

    ## Not run: 
    # This operation describes all of the security groups for a file system's
    # mount target.
    svc$describe_mount_target_security_groups(
      MountTargetId = "fsmt-12340abc"
    )

    ## End(Not run)
