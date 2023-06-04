<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_create_partition_index</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a specified partition index in an existing table

### Description

Creates a specified partition index in an existing table.

### Usage

    glue_create_partition_index(CatalogId, DatabaseName, TableName,
      PartitionIndex)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_create_partition_index_:_CatalogId">CatalogId</code></td>
<td><p>The catalog ID where the table resides.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_create_partition_index_:_DatabaseName">DatabaseName</code></td>
<td><p>[required] Specifies the name of a database in which you want to
create a partition index.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_create_partition_index_:_TableName">TableName</code></td>
<td><p>[required] Specifies the name of a table in which you want to
create a partition index.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_create_partition_index_:_PartitionIndex">PartitionIndex</code></td>
<td><p>[required] Specifies a <code>PartitionIndex</code> structure to
create a partition index in an existing table.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_partition_index(
      CatalogId = "string",
      DatabaseName = "string",
      TableName = "string",
      PartitionIndex = list(
        Keys = list(
          "string"
        ),
        IndexName = "string"
      )
    )
