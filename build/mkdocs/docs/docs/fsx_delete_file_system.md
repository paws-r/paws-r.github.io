<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fsx_delete_file_system</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a file system

### Description

Deletes a file system. After deletion, the file system no longer exists,
and its data is gone. Any existing automatic backups and snapshots are
also deleted.

To delete an Amazon FSx for NetApp ONTAP file system, first delete all
the volumes and storage virtual machines (SVMs) on the file system. Then
provide a `FileSystemId` value to the `DeleFileSystem` operation.

By default, when you delete an Amazon FSx for Windows File Server file
system, a final backup is created upon deletion. This final backup isn't
subject to the file system's retention policy, and must be manually
deleted.

The `delete_file_system` operation returns while the file system has the
`DELETING` status. You can check the file system deletion status by
calling the `describe_file_systems` operation, which returns a list of
file systems in your account. If you pass the file system ID for a
deleted file system, the `describe_file_systems` operation returns a
`FileSystemNotFound` error.

If a data repository task is in a `PENDING` or `EXECUTING` state,
deleting an Amazon FSx for Lustre file system will fail with an HTTP
status code 400 (Bad Request).

The data in a deleted file system is also deleted and can't be recovered
by any means.

### Usage

    fsx_delete_file_system(FileSystemId, ClientRequestToken,
      WindowsConfiguration, LustreConfiguration, OpenZFSConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fsx_delete_file_system_:_FileSystemId">FileSystemId</code></td>
<td><p>[required] The ID of the file system that you want to
delete.</p></td>
</tr>
<tr class="even">
<td><code
id="fsx_delete_file_system_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>A string of up to 63 ASCII characters that Amazon FSx uses to
ensure idempotent deletion. This token is automatically filled on your
behalf when using the Command Line Interface (CLI) or an Amazon Web
Services SDK.</p></td>
</tr>
<tr class="odd">
<td><code
id="fsx_delete_file_system_:_WindowsConfiguration">WindowsConfiguration</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="fsx_delete_file_system_:_LustreConfiguration">LustreConfiguration</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="fsx_delete_file_system_:_OpenZFSConfiguration">OpenZFSConfiguration</code></td>
<td><p>The configuration object for the OpenZFS file system used in the
<code>delete_file_system</code> operation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FileSystemId = "string",
      Lifecycle = "AVAILABLE"|"CREATING"|"FAILED"|"DELETING"|"MISCONFIGURED"|"UPDATING"|"MISCONFIGURED_UNAVAILABLE",
      WindowsResponse = list(
        FinalBackupId = "string",
        FinalBackupTags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      ),
      LustreResponse = list(
        FinalBackupId = "string",
        FinalBackupTags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      ),
      OpenZFSResponse = list(
        FinalBackupId = "string",
        FinalBackupTags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$delete_file_system(
      FileSystemId = "string",
      ClientRequestToken = "string",
      WindowsConfiguration = list(
        SkipFinalBackup = TRUE|FALSE,
        FinalBackupTags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      ),
      LustreConfiguration = list(
        SkipFinalBackup = TRUE|FALSE,
        FinalBackupTags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      ),
      OpenZFSConfiguration = list(
        SkipFinalBackup = TRUE|FALSE,
        FinalBackupTags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        Options = list(
          "DELETE_CHILD_VOLUMES_AND_SNAPSHOTS"
        )
      )
    )

### Examples

    ## Not run: 
    # This operation deletes an Amazon FSx file system.
    svc$delete_file_system(
      FileSystemId = "fs-0498eed5fe91001ec"
    )

    ## End(Not run)
