<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>docdb_delete_db_subnet_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a subnet group

### Description

Deletes a subnet group.

The specified database subnet group must not be associated with any DB
instances.

### Usage

    docdb_delete_db_subnet_group(DBSubnetGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="docdb_delete_db_subnet_group_:_DBSubnetGroupName">DBSubnetGroupName</code></td>
<td><p>[required] The name of the database subnet group to delete.</p>
<p>You can't delete the default subnet group.</p>
<p>Constraints:</p>
<p>Must match the name of an existing <code>DBSubnetGroup</code>. Must
not be default.</p>
<p>Example: <code>mySubnetgroup</code></p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_db_subnet_group(
      DBSubnetGroupName = "string"
    )
