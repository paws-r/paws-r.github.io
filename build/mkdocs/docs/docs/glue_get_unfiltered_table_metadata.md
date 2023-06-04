<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_unfiltered_table_metadata</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves table metadata from the Data Catalog that contains unfiltered metadata

### Description

Retrieves table metadata from the Data Catalog that contains unfiltered
metadata.

For IAM authorization, the public IAM action associated with this API is
`glue:GetTable`.

### Usage

    glue_get_unfiltered_table_metadata(CatalogId, DatabaseName, Name,
      AuditContext, SupportedPermissionTypes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_get_unfiltered_table_metadata_:_CatalogId">CatalogId</code></td>
<td><p>[required] The catalog ID where the table resides.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_get_unfiltered_table_metadata_:_DatabaseName">DatabaseName</code></td>
<td><p>[required] (Required) Specifies the name of a database that
contains the table.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_get_unfiltered_table_metadata_:_Name">Name</code></td>
<td><p>[required] (Required) Specifies the name of a table for which you
are requesting metadata.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_get_unfiltered_table_metadata_:_AuditContext">AuditContext</code></td>
<td><p>A structure containing Lake Formation audit context
information.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_get_unfiltered_table_metadata_:_SupportedPermissionTypes">SupportedPermissionTypes</code></td>
<td><p>[required] (Required) A list of supported permission
types.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Table = list(
        Name = "string",
        DatabaseName = "string",
        Description = "string",
        Owner = "string",
        CreateTime = as.POSIXct(
          "2015-01-01"
        ),
        UpdateTime = as.POSIXct(
          "2015-01-01"
        ),
        LastAccessTime = as.POSIXct(
          "2015-01-01"
        ),
        LastAnalyzedTime = as.POSIXct(
          "2015-01-01"
        ),
        Retention = 123,
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
        PartitionKeys = list(
          list(
            Name = "string",
            Type = "string",
            Comment = "string",
            Parameters = list(
              "string"
            )
          )
        ),
        ViewOriginalText = "string",
        ViewExpandedText = "string",
        TableType = "string",
        Parameters = list(
          "string"
        ),
        CreatedBy = "string",
        IsRegisteredWithLakeFormation = TRUE|FALSE,
        TargetTable = list(
          CatalogId = "string",
          DatabaseName = "string",
          Name = "string"
        ),
        CatalogId = "string",
        VersionId = "string",
        FederatedTable = list(
          Identifier = "string",
          DatabaseIdentifier = "string",
          ConnectionName = "string"
        )
      ),
      AuthorizedColumns = list(
        "string"
      ),
      IsRegisteredWithLakeFormation = TRUE|FALSE,
      CellFilters = list(
        list(
          ColumnName = "string",
          RowFilterExpression = "string"
        )
      )
    )

### Request syntax

    svc$get_unfiltered_table_metadata(
      CatalogId = "string",
      DatabaseName = "string",
      Name = "string",
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
