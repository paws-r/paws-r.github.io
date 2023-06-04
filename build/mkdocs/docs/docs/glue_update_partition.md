<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_update_partition</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a partition

### Description

Updates a partition.

### Usage

    glue_update_partition(CatalogId, DatabaseName, TableName,
      PartitionValueList, PartitionInput)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_update_partition_:_CatalogId">CatalogId</code></td>
<td><p>The ID of the Data Catalog where the partition to be updated
resides. If none is provided, the Amazon Web Services account ID is used
by default.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_update_partition_:_DatabaseName">DatabaseName</code></td>
<td><p>[required] The name of the catalog database in which the table in
question resides.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_update_partition_:_TableName">TableName</code></td>
<td><p>[required] The name of the table in which the partition to be
updated is located.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_update_partition_:_PartitionValueList">PartitionValueList</code></td>
<td><p>[required] List of partition key values that define the partition
to update.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_update_partition_:_PartitionInput">PartitionInput</code></td>
<td><p>[required] The new partition object to update the partition
to.</p>
<p>The <code>Values</code> property can't be changed. If you want to
change the partition key values for a partition, delete and recreate the
partition.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_partition(
      CatalogId = "string",
      DatabaseName = "string",
      TableName = "string",
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
