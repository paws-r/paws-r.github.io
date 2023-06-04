<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fsx_delete_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an Amazon FSx for OpenZFS snapshot

### Description

Deletes an Amazon FSx for OpenZFS snapshot. After deletion, the snapshot
no longer exists, and its data is gone. Deleting a snapshot doesn't
affect snapshots stored in a file system backup.

The `delete_snapshot` operation returns instantly. The snapshot appears
with the lifecycle status of `DELETING` until the deletion is complete.

### Usage

    fsx_delete_snapshot(ClientRequestToken, SnapshotId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fsx_delete_snapshot_:_ClientRequestToken">ClientRequestToken</code></td>
<td></td>
</tr>
<tr class="even">
<td><code id="fsx_delete_snapshot_:_SnapshotId">SnapshotId</code></td>
<td><p>[required] The ID of the snapshot that you want to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SnapshotId = "string",
      Lifecycle = "PENDING"|"CREATING"|"DELETING"|"AVAILABLE"
    )

### Request syntax

    svc$delete_snapshot(
      ClientRequestToken = "string",
      SnapshotId = "string"
    )
