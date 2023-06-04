<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_tables</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the definitions of some or all of the tables in a given Database

### Description

Retrieves the definitions of some or all of the tables in a given
`Database`.

### Usage

    glue_get_tables(CatalogId, DatabaseName, Expression, NextToken,
      MaxResults, TransactionId, QueryAsOfTime)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_get_tables_:_CatalogId">CatalogId</code></td>
<td><p>The ID of the Data Catalog where the tables reside. If none is
provided, the Amazon Web Services account ID is used by
default.</p></td>
</tr>
<tr class="even">
<td><code id="glue_get_tables_:_DatabaseName">DatabaseName</code></td>
<td><p>[required] The database in the catalog whose tables to list. For
Hive compatibility, this name is entirely lowercase.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_get_tables_:_Expression">Expression</code></td>
<td><p>A regular expression pattern. If present, only those tables whose
names match the pattern are returned.</p></td>
</tr>
<tr class="even">
<td><code id="glue_get_tables_:_NextToken">NextToken</code></td>
<td><p>A continuation token, included if this is a continuation
call.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_get_tables_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of tables to return in a single
response.</p></td>
</tr>
<tr class="even">
<td><code id="glue_get_tables_:_TransactionId">TransactionId</code></td>
<td><p>The transaction ID at which to read the table contents.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_get_tables_:_QueryAsOfTime">QueryAsOfTime</code></td>
<td><p>The time as of when to read the table contents. If not set, the
most recent transaction commit time will be used. Cannot be specified
along with <code>TransactionId</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TableList = list(
        list(
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
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_tables(
      CatalogId = "string",
      DatabaseName = "string",
      Expression = "string",
      NextToken = "string",
      MaxResults = 123,
      TransactionId = "string",
      QueryAsOfTime = as.POSIXct(
        "2015-01-01"
      )
    )
