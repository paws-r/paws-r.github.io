<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_delete_db_subnet_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a DB subnet group

### Description

Deletes a DB subnet group.

The specified database subnet group must not be associated with any DB
instances.

### Usage

    rds_delete_db_subnet_group(DBSubnetGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_delete_db_subnet_group_:_DBSubnetGroupName">DBSubnetGroupName</code></td>
<td><p>[required] The name of the database subnet group to delete.</p>
<p>You can't delete the default subnet group.</p>
<p>Constraints: Must match the name of an existing DBSubnetGroup. Must
not be default.</p>
<p>Example: <code>mydbsubnetgroup</code></p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_db_subnet_group(
      DBSubnetGroupName = "string"
    )
