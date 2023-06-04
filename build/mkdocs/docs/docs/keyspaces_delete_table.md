<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>keyspaces_delete_table</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The DeleteTable operation deletes a table and all of its data

### Description

The `delete_table` operation deletes a table and all of its data. After
a `delete_table` request is received, the specified table is in the
`DELETING` state until Amazon Keyspaces completes the deletion. If the
table is in the `ACTIVE` state, you can delete it. If a table is either
in the `CREATING` or `UPDATING` states, then Amazon Keyspaces returns a
`ResourceInUseException`. If the specified table does not exist, Amazon
Keyspaces returns a `ResourceNotFoundException`. If the table is already
in the `DELETING` state, no error is returned.

### Usage

    keyspaces_delete_table(keyspaceName, tableName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="keyspaces_delete_table_:_keyspaceName">keyspaceName</code></td>
<td><p>[required] The name of the keyspace of the to be deleted
table.</p></td>
</tr>
<tr class="even">
<td><code id="keyspaces_delete_table_:_tableName">tableName</code></td>
<td><p>[required] The name of the table to be deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_table(
      keyspaceName = "string",
      tableName = "string"
    )
