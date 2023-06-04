<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_unfiltered_partitions_metadata</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves partition metadata from the Data Catalog that contains unfiltered metadata

### Description

Retrieves partition metadata from the Data Catalog that contains
unfiltered metadata.

For IAM authorization, the public IAM action associated with this API is
`glue:GetPartitions`.

### Usage

    glue_get_unfiltered_partitions_metadata(CatalogId, DatabaseName,
      TableName, Expression, AuditContext, SupportedPermissionTypes,
      NextToken, Segment, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_get_unfiltered_partitions_metadata_:_CatalogId">CatalogId</code></td>
<td><p>[required] The ID of the Data Catalog where the partitions in
question reside. If none is provided, the AWS account ID is used by
default.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_get_unfiltered_partitions_metadata_:_DatabaseName">DatabaseName</code></td>
<td><p>[required] The name of the catalog database where the partitions
reside.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_get_unfiltered_partitions_metadata_:_TableName">TableName</code></td>
<td><p>[required] The name of the table that contains the
partition.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_get_unfiltered_partitions_metadata_:_Expression">Expression</code></td>
<td><p>An expression that filters the partitions to be returned.</p>
<p>The expression uses SQL syntax similar to the SQL <code>WHERE</code>
filter clause. The SQL statement parser <a
href="https://jsqlparser.sourceforge.net/home.php">JSQLParser</a> parses
the expression.</p>
<p><em>Operators</em>: The following are the operators that you can use
in the <code>Expression</code> API call:</p>
<p><strong>=</strong></p>
<p>Checks whether the values of the two operands are equal; if yes, then
the condition becomes true.</p>
<p>Example: Assume 'variable a' holds 10 and 'variable b' holds 20.</p>
<p>(a = b) is not true.</p>
<p><strong>\&lt; \&gt;</strong></p>
<p>Checks whether the values of two operands are equal; if the values
are not equal, then the condition becomes true.</p>
<p>Example: (a \&lt; \&gt; b) is true.</p>
<p><strong>\&gt;</strong></p>
<p>Checks whether the value of the left operand is greater than the
value of the right operand; if yes, then the condition becomes true.</p>
<p>Example: (a \&gt; b) is not true.</p>
<p><strong>\&lt;</strong></p>
<p>Checks whether the value of the left operand is less than the value
of the right operand; if yes, then the condition becomes true.</p>
<p>Example: (a \&lt; b) is true.</p>
<p><strong>\&gt;=</strong></p>
<p>Checks whether the value of the left operand is greater than or equal
to the value of the right operand; if yes, then the condition becomes
true.</p>
<p>Example: (a \&gt;= b) is not true.</p>
<p><strong>\&lt;=</strong></p>
<p>Checks whether the value of the left operand is less than or equal to
the value of the right operand; if yes, then the condition becomes
true.</p>
<p>Example: (a \&lt;= b) is true.</p>
<p><strong>AND, OR, IN, BETWEEN, LIKE, NOT, IS NULL</strong></p>
<p>Logical operators.</p>
<p><em>Supported Partition Key Types</em>: The following are the
supported partition keys.</p>
<ul>
<li><p><code>string</code></p></li>
<li><p><code>date</code></p></li>
<li><p><code>timestamp</code></p></li>
<li><p><code>int</code></p></li>
<li><p><code>bigint</code></p></li>
<li><p><code>long</code></p></li>
<li><p><code>tinyint</code></p></li>
<li><p><code>smallint</code></p></li>
<li><p><code>decimal</code></p></li>
</ul>
<p>If an type is encountered that is not valid, an exception is
thrown.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_get_unfiltered_partitions_metadata_:_AuditContext">AuditContext</code></td>
<td><p>A structure containing Lake Formation audit context
information.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_get_unfiltered_partitions_metadata_:_SupportedPermissionTypes">SupportedPermissionTypes</code></td>
<td><p>[required] A list of supported permission types.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_get_unfiltered_partitions_metadata_:_NextToken">NextToken</code></td>
<td><p>A continuation token, if this is not the first call to retrieve
these partitions.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_get_unfiltered_partitions_metadata_:_Segment">Segment</code></td>
<td><p>The segment of the table's partitions to scan in this
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_get_unfiltered_partitions_metadata_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of partitions to return in a single
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UnfilteredPartitions = list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_unfiltered_partitions_metadata(
      CatalogId = "string",
      DatabaseName = "string",
      TableName = "string",
      Expression = "string",
      AuditContext = list(
        AdditionalAuditContext = "string",
        RequestedColumns = list(
          "string"
        ),
        AllColumnsRequested = TRUE|FALSE
      ),
      SupportedPermissionTypes = list(
        "COLUMN_PERMISSION"|"CELL_FILTER_PERMISSION"
      ),
      NextToken = "string",
      Segment = list(
        SegmentNumber = 123,
        TotalSegments = 123
      ),
      MaxResults = 123
    )
