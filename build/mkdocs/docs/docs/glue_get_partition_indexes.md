<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_partition_indexes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the partition indexes associated with a table

### Description

Retrieves the partition indexes associated with a table.

### Usage

    glue_get_partition_indexes(CatalogId, DatabaseName, TableName,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_get_partition_indexes_:_CatalogId">CatalogId</code></td>
<td><p>The catalog ID where the table resides.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_get_partition_indexes_:_DatabaseName">DatabaseName</code></td>
<td><p>[required] Specifies the name of a database from which you want
to retrieve partition indexes.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_get_partition_indexes_:_TableName">TableName</code></td>
<td><p>[required] Specifies the name of a table for which you want to
retrieve the partition indexes.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_get_partition_indexes_:_NextToken">NextToken</code></td>
<td><p>A continuation token, included if this is a continuation
call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PartitionIndexDescriptorList = list(
        list(
          IndexName = "string",
          Keys = list(
            list(
              Name = "string",
              Type = "string"
            )
          ),
          IndexStatus = "CREATING"|"ACTIVE"|"DELETING"|"FAILED",
          BackfillErrors = list(
            list(
              Code = "ENCRYPTED_PARTITION_ERROR"|"INTERNAL_ERROR"|"INVALID_PARTITION_TYPE_DATA_ERROR"|"MISSING_PARTITION_VALUE_ERROR"|"UNSUPPORTED_PARTITION_CHARACTER_ERROR",
              Partitions = list(
                list(
                  Values = list(
                    "string"
                  )
                )
              )
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_partition_indexes(
      CatalogId = "string",
      DatabaseName = "string",
      TableName = "string",
      NextToken = "string"
    )
