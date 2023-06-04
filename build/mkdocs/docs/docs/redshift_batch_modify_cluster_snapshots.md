<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_batch_modify_cluster_snapshots</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the settings for a set of cluster snapshots

### Description

Modifies the settings for a set of cluster snapshots.

### Usage

    redshift_batch_modify_cluster_snapshots(SnapshotIdentifierList,
      ManualSnapshotRetentionPeriod, Force)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_batch_modify_cluster_snapshots_:_SnapshotIdentifierList">SnapshotIdentifierList</code></td>
<td><p>[required] A list of snapshot identifiers you want to
modify.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_batch_modify_cluster_snapshots_:_ManualSnapshotRetentionPeriod">ManualSnapshotRetentionPeriod</code></td>
<td><p>The number of days that a manual snapshot is retained. If you
specify the value -1, the manual snapshot is retained indefinitely.</p>
<p>The number must be either -1 or an integer between 1 and 3,653.</p>
<p>If you decrease the manual snapshot retention period from its current
value, existing manual snapshots that fall outside of the new retention
period will return an error. If you want to suppress the errors and
delete the snapshots, use the force option.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_batch_modify_cluster_snapshots_:_Force">Force</code></td>
<td><p>A boolean value indicating whether to override an exception if
the retention period has passed.</p></td>
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

    svc$batch_modify_cluster_snapshots(
      SnapshotIdentifierList = list(
        "string"
      ),
      ManualSnapshotRetentionPeriod = 123,
      Force = TRUE|FALSE
    )
