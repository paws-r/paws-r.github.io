<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_batch_update_partition</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates one or more partitions in a batch operation

### Description

Updates one or more partitions in a batch operation.

### Usage

    glue_batch_update_partition(CatalogId, DatabaseName, TableName, Entries)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_batch_update_partition_:_CatalogId">CatalogId</code></td>
<td><p>The ID of the catalog in which the partition is to be updated.
Currently, this should be the Amazon Web Services account ID.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_batch_update_partition_:_DatabaseName">DatabaseName</code></td>
<td><p>[required] The name of the metadata database in which the
partition is to be updated.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_batch_update_partition_:_TableName">TableName</code></td>
<td><p>[required] The name of the metadata table in which the partition
is to be updated.</p></td>
</tr>
<tr class="even">
<td><code id="glue_batch_update_partition_:_Entries">Entries</code></td>
<td><p>[required] A list of up to 100
<code>BatchUpdatePartitionRequestEntry</code> objects to
update.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Errors = list(
        list(
          PartitionValueList = list(
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

    svc$batch_update_partition(
      CatalogId = "string",
      DatabaseName = "string",
      TableName = "string",
      Entries = list(
        list(
          PartitionValueList = list(
            "string"
          ),
          PartitionInput = list(
            Values = list(
              "string"
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
            )
          )
        )
      )
    )
