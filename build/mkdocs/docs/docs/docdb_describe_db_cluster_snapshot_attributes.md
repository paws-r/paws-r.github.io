<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>docdb_describe_db_cluster_snapshot_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of cluster snapshot attribute names and values for a manual DB cluster snapshot

### Description

Returns a list of cluster snapshot attribute names and values for a
manual DB cluster snapshot.

When you share snapshots with other Amazon Web Services accounts,
`describe_db_cluster_snapshot_attributes` returns the `restore`
attribute and a list of IDs for the Amazon Web Services accounts that
are authorized to copy or restore the manual cluster snapshot. If `all`
is included in the list of values for the `restore` attribute, then the
manual cluster snapshot is public and can be copied or restored by all
Amazon Web Services accounts.

### Usage

    docdb_describe_db_cluster_snapshot_attributes(
      DBClusterSnapshotIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="docdb_describe_db_cluster_snapshot_attributes_:_DBClusterSnapshotIdentifier">DBClusterSnapshotIdentifier</code></td>
<td><p>[required] The identifier for the cluster snapshot to describe
the attributes for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DBClusterSnapshotAttributesResult = list(
        DBClusterSnapshotIdentifier = "string",
        DBClusterSnapshotAttributes = list(
          list(
            AttributeName = "string",
            AttributeValues = list(
              "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$describe_db_cluster_snapshot_attributes(
      DBClusterSnapshotIdentifier = "string"
    )
