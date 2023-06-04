<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_batch_delete_cluster_snapshots</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a set of cluster snapshots

### Description

Deletes a set of cluster snapshots.

### Usage

    redshift_batch_delete_cluster_snapshots(Identifiers)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_batch_delete_cluster_snapshots_:_Identifiers">Identifiers</code></td>
<td><p>[required] A list of identifiers for the snapshots that you want
to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Resources = list(
        "string"
      ),
      Errors = list(
        list(
          SnapshotIdentifier = "string",
          SnapshotClusterIdentifier = "string",
          FailureCode = "string",
          FailureReason = "string"
        )
      )
    )

### Request syntax

    svc$batch_delete_cluster_snapshots(
      Identifiers = list(
        list(
          SnapshotIdentifier = "string",
          SnapshotClusterIdentifier = "string"
        )
      )
    )
