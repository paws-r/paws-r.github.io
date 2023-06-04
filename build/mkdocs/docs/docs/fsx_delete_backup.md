<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fsx_delete_backup</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an Amazon FSx backup

### Description

Deletes an Amazon FSx backup. After deletion, the backup no longer
exists, and its data is gone.

The `delete_backup` call returns instantly. The backup won't show up in
later `describe_backups` calls.

The data in a deleted backup is also deleted and can't be recovered by
any means.

### Usage

    fsx_delete_backup(BackupId, ClientRequestToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="fsx_delete_backup_:_BackupId">BackupId</code></td>
<td><p>[required] The ID of the backup that you want to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="fsx_delete_backup_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>A string of up to 63 ASCII characters that Amazon FSx uses to
ensure idempotent deletion. This parameter is automatically filled on
your behalf when using the CLI or SDK.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BackupId = "string",
      Lifecycle = "AVAILABLE"|"CREATING"|"TRANSFERRING"|"DELETED"|"FAILED"|"PENDING"|"COPYING"
    )

### Request syntax

    svc$delete_backup(
      BackupId = "string",
      ClientRequestToken = "string"
    )

### Examples

    ## Not run: 
    # This operation deletes an Amazon FSx file system backup.
    svc$delete_backup(
      BackupId = "backup-03e3c82e0183b7b6b"
    )

    ## End(Not run)
