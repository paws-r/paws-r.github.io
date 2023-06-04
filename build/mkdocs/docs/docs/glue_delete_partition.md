<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_delete_partition</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a specified partition

### Description

Deletes a specified partition.

### Usage

    glue_delete_partition(CatalogId, DatabaseName, TableName,
      PartitionValues)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_delete_partition_:_CatalogId">CatalogId</code></td>
<td><p>The ID of the Data Catalog where the partition to be deleted
resides. If none is provided, the Amazon Web Services account ID is used
by default.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_delete_partition_:_DatabaseName">DatabaseName</code></td>
<td><p>[required] The name of the catalog database in which the table in
question resides.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_delete_partition_:_TableName">TableName</code></td>
<td><p>[required] The name of the table that contains the partition to
be deleted.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_delete_partition_:_PartitionValues">PartitionValues</code></td>
<td><p>[required] The values that define the partition.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_partition(
      CatalogId = "string",
      DatabaseName = "string",
      TableName = "string",
      PartitionValues = list(
        "string"
      )
    )
