<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_batch_delete_partition</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes one or more partitions in a batch operation

### Description

Deletes one or more partitions in a batch operation.

### Usage

    glue_batch_delete_partition(CatalogId, DatabaseName, TableName,
      PartitionsToDelete)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_batch_delete_partition_:_CatalogId">CatalogId</code></td>
<td><p>The ID of the Data Catalog where the partition to be deleted
resides. If none is provided, the Amazon Web Services account ID is used
by default.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_batch_delete_partition_:_DatabaseName">DatabaseName</code></td>
<td><p>[required] The name of the catalog database in which the table in
question resides.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_batch_delete_partition_:_TableName">TableName</code></td>
<td><p>[required] The name of the table that contains the partitions to
be deleted.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_batch_delete_partition_:_PartitionsToDelete">PartitionsToDelete</code></td>
<td><p>[required] A list of <code>PartitionInput</code> structures that
define the partitions to be deleted.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Errors = list(
        list(
          PartitionValues = list(
            "string"
          ),
          ErrorDetail = list(
            ErrorCode = "string",
            ErrorMessage = "string"
          )
        )
      )
    )

### Request syntax

    svc$batch_delete_partition(
      CatalogId = "string",
      DatabaseName = "string",
      TableName = "string",
      PartitionsToDelete = list(
        list(
          Values = list(
            "string"
          )
        )
      )
    )
