<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_delete_partition_index</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a specified partition index from an existing table

### Description

Deletes a specified partition index from an existing table.

### Usage

    glue_delete_partition_index(CatalogId, DatabaseName, TableName,
      IndexName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_delete_partition_index_:_CatalogId">CatalogId</code></td>
<td><p>The catalog ID where the table resides.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_delete_partition_index_:_DatabaseName">DatabaseName</code></td>
<td><p>[required] Specifies the name of a database from which you want
to delete a partition index.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_delete_partition_index_:_TableName">TableName</code></td>
<td><p>[required] Specifies the name of a table from which you want to
delete a partition index.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_delete_partition_index_:_IndexName">IndexName</code></td>
<td><p>[required] The name of the partition index to be
deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_partition_index(
      CatalogId = "string",
      DatabaseName = "string",
      TableName = "string",
      IndexName = "string"
    )
