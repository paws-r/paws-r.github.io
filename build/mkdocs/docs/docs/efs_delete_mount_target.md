<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>efs_delete_mount_target</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified mount target

### Description

Deletes the specified mount target.

This operation forcibly breaks any mounts of the file system by using
the mount target that is being deleted, which might disrupt instances or
applications using those mounts. To avoid applications getting cut off
abruptly, you might consider unmounting any mounts of the mount target,
if feasible. The operation also deletes the associated network
interface. Uncommitted writes might be lost, but breaking a mount target
using this operation does not corrupt the file system itself. The file
system you created remains. You can mount an EC2 instance in your VPC by
using another mount target.

This operation requires permissions for the following action on the file
system:

-   `elasticfilesystem:DeleteMountTarget`

The `delete_mount_target` call returns while the mount target state is
still `deleting`. You can check the mount target deletion by calling the
`describe_mount_targets` operation, which returns a list of mount target
descriptions for the given file system.

The operation also requires permissions for the following Amazon EC2
action on the mount target's network interface:

-   `ec2:DeleteNetworkInterface`

### Usage

    efs_delete_mount_target(MountTargetId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="efs_delete_mount_target_:_MountTargetId">MountTargetId</code></td>
<td><p>[required] The ID of the mount target to delete
(String).</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_mount_target(
      MountTargetId = "string"
    )

### Examples

    ## Not run: 
    # This operation deletes a mount target.
    svc$delete_mount_target(
      MountTargetId = "fsmt-12340abc"
    )

    ## End(Not run)
