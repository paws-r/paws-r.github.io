<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>efs_delete_file_system</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a file system, permanently severing access to its contents

### Description

Deletes a file system, permanently severing access to its contents. Upon
return, the file system no longer exists and you can't access any
contents of the deleted file system.

You need to manually delete mount targets attached to a file system
before you can delete an EFS file system. This step is performed for you
when you use the Amazon Web Services console to delete a file system.

You cannot delete a file system that is part of an EFS Replication
configuration. You need to delete the replication configuration first.

You can't delete a file system that is in use. That is, if the file
system has any mount targets, you must first delete them. For more
information, see `describe_mount_targets` and `delete_mount_target`.

The `delete_file_system` call returns while the file system state is
still `deleting`. You can check the file system deletion status by
calling the `describe_file_systems` operation, which returns a list of
file systems in your account. If you pass file system ID or creation
token for the deleted file system, the `describe_file_systems` returns a
`⁠404 FileSystemNotFound⁠` error.

This operation requires permissions for the
`elasticfilesystem:DeleteFileSystem` action.

### Usage

    efs_delete_file_system(FileSystemId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="efs_delete_file_system_:_FileSystemId">FileSystemId</code></td>
<td><p>[required] The ID of the file system you want to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_file_system(
      FileSystemId = "string"
    )

### Examples

    ## Not run: 
    # This operation deletes an EFS file system.
    svc$delete_file_system(
      FileSystemId = "fs-01234567"
    )

    ## End(Not run)
