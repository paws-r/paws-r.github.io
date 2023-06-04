<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>efs_delete_file_system_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the FileSystemPolicy for the specified file system

### Description

Deletes the `FileSystemPolicy` for the specified file system. The
default `FileSystemPolicy` goes into effect once the existing policy is
deleted. For more information about the default file system policy, see
[Using Resource-based Policies with
EFS](https://docs.aws.amazon.com/efs/latest/ug/).

This operation requires permissions for the
`elasticfilesystem:DeleteFileSystemPolicy` action.

### Usage

    efs_delete_file_system_policy(FileSystemId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="efs_delete_file_system_policy_:_FileSystemId">FileSystemId</code></td>
<td><p>[required] Specifies the EFS file system for which to delete the
<code>FileSystemPolicy</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_file_system_policy(
      FileSystemId = "string"
    )
