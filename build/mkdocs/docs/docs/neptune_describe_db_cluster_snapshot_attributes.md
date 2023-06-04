<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>neptune_describe_db_cluster_snapshot_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of DB cluster snapshot attribute names and values for a manual DB cluster snapshot

### Description

Returns a list of DB cluster snapshot attribute names and values for a
manual DB cluster snapshot.

When sharing snapshots with other Amazon accounts,
`describe_db_cluster_snapshot_attributes` returns the `restore`
attribute and a list of IDs for the Amazon accounts that are authorized
to copy or restore the manual DB cluster snapshot. If `all` is included
in the list of values for the `restore` attribute, then the manual DB
cluster snapshot is public and can be copied or restored by all Amazon
accounts.

To add or remove access for an Amazon account to copy or restore a
manual DB cluster snapshot, or to make the manual DB cluster snapshot
public or private, use the `modify_db_cluster_snapshot_attribute` API
action.

### Usage

    neptune_describe_db_cluster_snapshot_attributes(
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
id="neptune_describe_db_cluster_snapshot_attributes_:_DBClusterSnapshotIdentifier">DBClusterSnapshotIdentifier</code></td>
<td><p>[required] The identifier for the DB cluster snapshot to describe
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
