<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_search_tables</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Searches a set of tables based on properties in the table metadata as well as on the parent database

### Description

Searches a set of tables based on properties in the table metadata as
well as on the parent database. You can search against text or filter
conditions.

You can only get tables that you have access to based on the security
policies defined in Lake Formation. You need at least a read-only access
to the table for it to be returned. If you do not have access to all the
columns in the table, these columns will not be searched against when
returning the list of tables back to you. If you have access to the
columns but not the data in the columns, those columns and the
associated metadata for those columns will be included in the search.

### Usage

    glue_search_tables(CatalogId, NextToken, Filters, SearchText,
      SortCriteria, MaxResults, ResourceShareType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_search_tables_:_CatalogId">CatalogId</code></td>
<td><p>A unique identifier, consisting of
<code>account_id</code>.</p></td>
</tr>
<tr class="even">
<td><code id="glue_search_tables_:_NextToken">NextToken</code></td>
<td><p>A continuation token, included if this is a continuation
call.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_search_tables_:_Filters">Filters</code></td>
<td><p>A list of key-value pairs, and a comparator used to filter the
search results. Returns all entities matching the predicate.</p>
<p>The <code>Comparator</code> member of the
<code>PropertyPredicate</code> struct is used only for time fields, and
can be omitted for other field types. Also, when comparing string
values, such as when <code>Key=Name</code>, a fuzzy match algorithm is
used. The <code>Key</code> field (for example, the value of the
<code>Name</code> field) is split on certain punctuation characters, for
example, -, :, #, etc. into tokens. Then each token is exact-match
compared with the <code>Value</code> member of
<code>PropertyPredicate</code>. For example, if <code>Key=Name</code>
and <code>Value=link</code>, tables named <code>customer-link</code> and
<code>xx-link-yy</code> are returned, but <code>xxlinkyy</code> is not
returned.</p></td>
</tr>
<tr class="even">
<td><code id="glue_search_tables_:_SearchText">SearchText</code></td>
<td><p>A string used for a text search.</p>
<p>Specifying a value in quotes filters based on an exact match to the
value.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_search_tables_:_SortCriteria">SortCriteria</code></td>
<td><p>A list of criteria for sorting the results by a field name, in an
ascending or descending order.</p></td>
</tr>
<tr class="even">
<td><code id="glue_search_tables_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of tables to return in a single
response.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_search_tables_:_ResourceShareType">ResourceShareType</code></td>
<td><p>Allows you to specify that you want to search the tables shared
with your account. The allowable values are <code>FOREIGN</code> or
<code>ALL</code>.</p>
<ul>
<li><p>If set to <code>FOREIGN</code>, will search the tables shared
with your account.</p></li>
<li><p>If set to <code>ALL</code>, will search the tables shared with
your account, as well as the tables in yor local account.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
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
      )
    )

### Request syntax

    svc$search_tables(
      CatalogId = "string",
      NextToken = "string",
      Filters = list(
        list(
          Key = "string",
          Value = "string",
          Comparator = "EQUALS"|"GREATER_THAN"|"LESS_THAN"|"GREATER_THAN_EQUALS"|"LESS_THAN_EQUALS"
        )
      ),
      SearchText = "string",
      SortCriteria = list(
        list(
          FieldName = "string",
          Sort = "ASC"|"DESC"
        )
      ),
      MaxResults = 123,
      ResourceShareType = "FOREIGN"|"ALL"|"FEDERATED"
    )
