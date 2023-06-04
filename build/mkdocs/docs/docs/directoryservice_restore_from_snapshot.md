<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_restore_from_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Restores a directory using an existing directory snapshot

### Description

Restores a directory using an existing directory snapshot.

When you restore a directory from a snapshot, any changes made to the
directory after the snapshot date are overwritten.

This action returns as soon as the restore operation is initiated. You
can monitor the progress of the restore operation by calling the
`describe_directories` operation with the directory identifier. When the
**DirectoryDescription.Stage** value changes to `Active`, the restore
operation is complete.

### Usage

    directoryservice_restore_from_snapshot(SnapshotId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_restore_from_snapshot_:_SnapshotId">SnapshotId</code></td>
<td><p>[required] The identifier of the snapshot to restore
from.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$restore_from_snapshot(
      SnapshotId = "string"
    )
