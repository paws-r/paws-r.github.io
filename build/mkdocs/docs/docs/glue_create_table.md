<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_create_table</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new table definition in the Data Catalog

### Description

Creates a new table definition in the Data Catalog.

### Usage

    glue_create_table(CatalogId, DatabaseName, TableInput, PartitionIndexes,
      TransactionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_create_table_:_CatalogId">CatalogId</code></td>
<td><p>The ID of the Data Catalog in which to create the
<code>Table</code>. If none is supplied, the Amazon Web Services account
ID is used by default.</p></td>
</tr>
<tr class="even">
<td><code id="glue_create_table_:_DatabaseName">DatabaseName</code></td>
<td><p>[required] The catalog database in which to create the new table.
For Hive compatibility, this name is entirely lowercase.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_create_table_:_TableInput">TableInput</code></td>
<td><p>[required] The <code>TableInput</code> object that defines the
metadata table to create in the catalog.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_create_table_:_PartitionIndexes">PartitionIndexes</code></td>
<td><p>A list of partition indexes, <code>PartitionIndex</code>
structures, to create in the table.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_create_table_:_TransactionId">TransactionId</code></td>
<td><p>The ID of the transaction.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_table(
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
      PartitionIndexes = list(
        list(
          Keys = list(
            "string"
          ),
          IndexName = "string"
        )
      ),
      TransactionId = "string"
    )
