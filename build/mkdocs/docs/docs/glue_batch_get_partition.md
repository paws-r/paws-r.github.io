<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_batch_get_partition</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves partitions in a batch request

### Description

Retrieves partitions in a batch request.

### Usage

    glue_batch_get_partition(CatalogId, DatabaseName, TableName,
      PartitionsToGet)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_batch_get_partition_:_CatalogId">CatalogId</code></td>
<td><p>The ID of the Data Catalog where the partitions in question
reside. If none is supplied, the Amazon Web Services account ID is used
by default.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_batch_get_partition_:_DatabaseName">DatabaseName</code></td>
<td><p>[required] The name of the catalog database where the partitions
reside.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_batch_get_partition_:_TableName">TableName</code></td>
<td><p>[required] The name of the partitions' table.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_batch_get_partition_:_PartitionsToGet">PartitionsToGet</code></td>
<td><p>[required] A list of partition values identifying the partitions
to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Partitions = list(
        list(
          Values = list(
            "string"
          ),
          DatabaseName = "string",
          TableName = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          LastAccessTime = as.POSIXct(
            "2015-01-01"
          ),
          StorageDescriptor = list(
            Columns = list(
              list(
                Name = "string",
                Type = "string",
                Comment = "string",
                Parameters = list(
                  "string"
                )
              )
            ),
            Location = "string",
            AdditionalLocations = list(
              "string"
            ),
            InputFormat = "string",
            OutputFormat = "string",
            Compressed = TRUE|FALSE,
            NumberOfBuckets = 123,
            SerdeInfo = list(
              Name = "string",
              SerializationLibrary = "string",
              Parameters = list(
                "string"
              )
            ),
            BucketColumns = list(
              "string"
            ),
            SortColumns = list(
              list(
                Column = "string",
                SortOrder = 123
              )
            ),
            Parameters = list(
              "string"
            ),
            SkewedInfo = list(
              SkewedColumnNames = list(
                "string"
              ),
              SkewedColumnValues = list(
                "string"
              ),
              SkewedColumnValueLocationMaps = list(
                "string"
              )
            ),
            StoredAsSubDirectories = TRUE|FALSE,
            SchemaReference = list(
              SchemaId = list(
                SchemaArn = "string",
                SchemaName = "string",
                RegistryName = "string"
              ),
              SchemaVersionId = "string",
              SchemaVersionNumber = 123
            )
          ),
          Parameters = list(
            "string"
          ),
          LastAnalyzedTime = as.POSIXct(
            "2015-01-01"
          ),
          CatalogId = "string"
        )
      ),
      UnprocessedKeys = list(
        list(
          Values = list(
            "string"
          )
        )
      )
    )

### Request syntax

    svc$batch_get_partition(
      CatalogId = "string",
      DatabaseName = "string",
      TableName = "string",
      PartitionsToGet = list(
        list(
          Values = list(
            "string"
          )
        )
      )
    )
