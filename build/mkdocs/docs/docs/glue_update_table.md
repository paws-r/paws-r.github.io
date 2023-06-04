<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_update_table</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a metadata table in the Data Catalog

### Description

Updates a metadata table in the Data Catalog.

### Usage

    glue_update_table(CatalogId, DatabaseName, TableInput, SkipArchive,
      TransactionId, VersionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_update_table_:_CatalogId">CatalogId</code></td>
<td><p>The ID of the Data Catalog where the table resides. If none is
provided, the Amazon Web Services account ID is used by
default.</p></td>
</tr>
<tr class="even">
<td><code id="glue_update_table_:_DatabaseName">DatabaseName</code></td>
<td><p>[required] The name of the catalog database in which the table
resides. For Hive compatibility, this name is entirely
lowercase.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_update_table_:_TableInput">TableInput</code></td>
<td><p>[required] An updated <code>TableInput</code> object to define
the metadata table in the catalog.</p></td>
</tr>
<tr class="even">
<td><code id="glue_update_table_:_SkipArchive">SkipArchive</code></td>
<td><p>By default, <code>update_table</code> always creates an archived
version of the table before updating it. However, if
<code>skipArchive</code> is set to true, <code>update_table</code> does
not create the archived version.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_update_table_:_TransactionId">TransactionId</code></td>
<td><p>The transaction ID at which to update the table
contents.</p></td>
</tr>
<tr class="even">
<td><code id="glue_update_table_:_VersionId">VersionId</code></td>
<td><p>The version ID at which to update the table contents.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_table(
      CatalogId = "string",
      DatabaseName = "string",
      TableInput = list(
        Name = "string",
        Description = "string",
        Owner = "string",
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
        TargetTable = list(
          CatalogId = "string",
          DatabaseName = "string",
          Name = "string"
        )
      ),
      SkipArchive = TRUE|FALSE,
      TransactionId = "string",
      VersionId = "string"
    )
