<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>docdb_modify_db_cluster_snapshot_attribute</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds an attribute and values to, or removes an attribute and values from, a manual cluster snapshot

### Description

Adds an attribute and values to, or removes an attribute and values
from, a manual cluster snapshot.

To share a manual cluster snapshot with other Amazon Web Services
accounts, specify `restore` as the `AttributeName`, and use the
`ValuesToAdd` parameter to add a list of IDs of the Amazon Web Services
accounts that are authorized to restore the manual cluster snapshot. Use
the value `all` to make the manual cluster snapshot public, which means
that it can be copied or restored by all Amazon Web Services accounts.
Do not add the `all` value for any manual cluster snapshots that contain
private information that you don't want available to all Amazon Web
Services accounts. If a manual cluster snapshot is encrypted, it can be
shared, but only by specifying a list of authorized Amazon Web Services
account IDs for the `ValuesToAdd` parameter. You can't use `all` as a
value for that parameter in this case.

### Usage

    docdb_modify_db_cluster_snapshot_attribute(DBClusterSnapshotIdentifier,
      AttributeName, ValuesToAdd, ValuesToRemove)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="docdb_modify_db_cluster_snapshot_attribute_:_DBClusterSnapshotIdentifier">DBClusterSnapshotIdentifier</code></td>
<td><p>[required] The identifier for the cluster snapshot to modify the
attributes for.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_modify_db_cluster_snapshot_attribute_:_AttributeName">AttributeName</code></td>
<td><p>[required] The name of the cluster snapshot attribute to
modify.</p>
<p>To manage authorization for other Amazon Web Services accounts to
copy or restore a manual cluster snapshot, set this value to
<code>restore</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_modify_db_cluster_snapshot_attribute_:_ValuesToAdd">ValuesToAdd</code></td>
<td><p>A list of cluster snapshot attributes to add to the attribute
specified by <code>AttributeName</code>.</p>
<p>To authorize other Amazon Web Services accounts to copy or restore a
manual cluster snapshot, set this list to include one or more Amazon Web
Services account IDs. To make the manual cluster snapshot restorable by
any Amazon Web Services account, set it to <code>all</code>. Do not add
the <code>all</code> value for any manual cluster snapshots that contain
private information that you don't want to be available to all Amazon
Web Services accounts.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_modify_db_cluster_snapshot_attribute_:_ValuesToRemove">ValuesToRemove</code></td>
<td><p>A list of cluster snapshot attributes to remove from the
attribute specified by <code>AttributeName</code>.</p>
<p>To remove authorization for other Amazon Web Services accounts to
copy or restore a manual cluster snapshot, set this list to include one
or more Amazon Web Services account identifiers. To remove authorization
for any Amazon Web Services account to copy or restore the cluster
snapshot, set it to <code>all</code> . If you specify <code>all</code>,
an Amazon Web Services account whose account ID is explicitly added to
the <code>restore</code> attribute can still copy or restore a manual
cluster snapshot.</p></td>
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

    svc$modify_db_cluster_snapshot_attribute(
      DBClusterSnapshotIdentifier = "string",
      AttributeName = "string",
      ValuesToAdd = list(
        "string"
      ),
      ValuesToRemove = list(
        "string"
      )
    )
