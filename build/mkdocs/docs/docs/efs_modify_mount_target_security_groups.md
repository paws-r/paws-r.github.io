<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>efs_modify_mount_target_security_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the set of security groups in effect for a mount target

### Description

Modifies the set of security groups in effect for a mount target.

When you create a mount target, Amazon EFS also creates a new network
interface. For more information, see `create_mount_target`. This
operation replaces the security groups in effect for the network
interface associated with a mount target, with the `SecurityGroups`
provided in the request. This operation requires that the network
interface of the mount target has been created and the lifecycle state
of the mount target is not `deleted`.

The operation requires permissions for the following actions:

-   `elasticfilesystem:ModifyMountTargetSecurityGroups` action on the
    mount target's file system.

-   `ec2:ModifyNetworkInterfaceAttribute` action on the mount target's
    network interface.

### Usage

    efs_modify_mount_target_security_groups(MountTargetId, SecurityGroups)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="efs_modify_mount_target_security_groups_:_MountTargetId">MountTargetId</code></td>
<td><p>[required] The ID of the mount target whose security groups you
want to modify.</p></td>
</tr>
<tr class="even">
<td><code
id="efs_modify_mount_target_security_groups_:_SecurityGroups">SecurityGroups</code></td>
<td><p>An array of up to five VPC security group IDs.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$modify_mount_target_security_groups(
      MountTargetId = "string",
      SecurityGroups = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This operation modifies the security groups associated with a mount
    # target for a file system.
    svc$modify_mount_target_security_groups(
      MountTargetId = "fsmt-12340abc",
      SecurityGroups = list(
        "sg-abcd1234"
      )
    )

    ## End(Not run)
