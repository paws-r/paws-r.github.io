<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_describe_db_snapshot_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of DB snapshot attribute names and values for a manual DB snapshot

### Description

Returns a list of DB snapshot attribute names and values for a manual DB
snapshot.

When sharing snapshots with other Amazon Web Services accounts,
`describe_db_snapshot_attributes` returns the `restore` attribute and a
list of IDs for the Amazon Web Services accounts that are authorized to
copy or restore the manual DB snapshot. If `all` is included in the list
of values for the `restore` attribute, then the manual DB snapshot is
public and can be copied or restored by all Amazon Web Services
accounts.

To add or remove access for an Amazon Web Services account to copy or
restore a manual DB snapshot, or to make the manual DB snapshot public
or private, use the `modify_db_snapshot_attribute` API action.

### Usage

    rds_describe_db_snapshot_attributes(DBSnapshotIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_describe_db_snapshot_attributes_:_DBSnapshotIdentifier">DBSnapshotIdentifier</code></td>
<td><p>[required] The identifier for the DB snapshot to describe the
attributes for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DBSnapshotAttributesResult = list(
        DBSnapshotIdentifier = "string",
        DBSnapshotAttributes = list(
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

    svc$describe_db_snapshot_attributes(
      DBSnapshotIdentifier = "string"
    )
