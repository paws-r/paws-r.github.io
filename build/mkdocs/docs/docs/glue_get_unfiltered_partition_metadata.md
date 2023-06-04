<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_unfiltered_partition_metadata</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves partition metadata from the Data Catalog that contains unfiltered metadata

### Description

Retrieves partition metadata from the Data Catalog that contains
unfiltered metadata.

For IAM authorization, the public IAM action associated with this API is
`glue:GetPartition`.

### Usage

    glue_get_unfiltered_partition_metadata(CatalogId, DatabaseName,
      TableName, PartitionValues, AuditContext, SupportedPermissionTypes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_get_unfiltered_partition_metadata_:_CatalogId">CatalogId</code></td>
<td><p>[required] The catalog ID where the partition resides.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_get_unfiltered_partition_metadata_:_DatabaseName">DatabaseName</code></td>
<td><p>[required] (Required) Specifies the name of a database that
contains the partition.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_get_unfiltered_partition_metadata_:_TableName">TableName</code></td>
<td><p>[required] (Required) Specifies the name of a table that contains
the partition.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_get_unfiltered_partition_metadata_:_PartitionValues">PartitionValues</code></td>
<td><p>[required] (Required) A list of partition key values.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_get_unfiltered_partition_metadata_:_AuditContext">AuditContext</code></td>
<td><p>A structure containing Lake Formation audit context
information.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_get_unfiltered_partition_metadata_:_SupportedPermissionTypes">SupportedPermissionTypes</code></td>
<td><p>[required] (Required) A list of supported permission
types.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Partition = list(
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
      ),
      AuthorizedColumns = list(
        "string"
      ),
      IsRegisteredWithLakeFormation = TRUE|FALSE
    )

### Request syntax

    svc$get_unfiltered_partition_metadata(
      CatalogId = "string",
      DatabaseName = "string",
      TableName = "string",
      PartitionValues = list(
        "string"
      ),
      AuditContext = list(
        AdditionalAuditContext = "string",
        RequestedColumns = list(
          "string"
        ),
        AllColumnsRequested = TRUE|FALSE
      ),
      SupportedPermissionTypes = list(
        "COLUMN_PERMISSION"|"CELL_FILTER_PERMISSION"
      )
    )
