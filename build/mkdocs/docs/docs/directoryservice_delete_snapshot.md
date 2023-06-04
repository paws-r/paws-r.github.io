<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_delete_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a directory snapshot

### Description

Deletes a directory snapshot.

### Usage

    directoryservice_delete_snapshot(SnapshotId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_delete_snapshot_:_SnapshotId">SnapshotId</code></td>
<td><p>[required] The identifier of the directory snapshot to be
deleted.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SnapshotId = "string"
    )

### Request syntax

    svc$delete_snapshot(
      SnapshotId = "string"
    )
