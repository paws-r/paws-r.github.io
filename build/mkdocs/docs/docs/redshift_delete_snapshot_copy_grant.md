<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_delete_snapshot_copy_grant</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified snapshot copy grant

### Description

Deletes the specified snapshot copy grant.

### Usage

    redshift_delete_snapshot_copy_grant(SnapshotCopyGrantName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_delete_snapshot_copy_grant_:_SnapshotCopyGrantName">SnapshotCopyGrantName</code></td>
<td><p>[required] The name of the snapshot copy grant to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_snapshot_copy_grant(
      SnapshotCopyGrantName = "string"
    )
