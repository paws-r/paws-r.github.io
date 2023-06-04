<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lakeformation_get_table_objects</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the set of Amazon S3 objects that make up the specified governed table

### Description

Returns the set of Amazon S3 objects that make up the specified governed
table. A transaction ID or timestamp can be specified for time-travel
queries.

### Usage

    lakeformation_get_table_objects(CatalogId, DatabaseName, TableName,
      TransactionId, QueryAsOfTime, PartitionPredicate, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lakeformation_get_table_objects_:_CatalogId">CatalogId</code></td>
<td><p>The catalog containing the governed table. Defaults to the
caller’s account.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_get_table_objects_:_DatabaseName">DatabaseName</code></td>
<td><p>[required] The database containing the governed table.</p></td>
</tr>
<tr class="odd">
<td><code
id="lakeformation_get_table_objects_:_TableName">TableName</code></td>
<td><p>[required] The governed table for which to retrieve
objects.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_get_table_objects_:_TransactionId">TransactionId</code></td>
<td><p>The transaction ID at which to read the governed table contents.
If this transaction has aborted, an error is returned. If not set,
defaults to the most recent committed transaction. Cannot be specified
along with <code>QueryAsOfTime</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="lakeformation_get_table_objects_:_QueryAsOfTime">QueryAsOfTime</code></td>
<td><p>The time as of when to read the governed table contents. If not
set, the most recent transaction commit time is used. Cannot be
specified along with <code>TransactionId</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_get_table_objects_:_PartitionPredicate">PartitionPredicate</code></td>
<td><p>A predicate to filter the objects returned based on the partition
keys defined in the governed table.</p>
<ul>
<li><p>The comparison operators supported are: =, \&gt;, \&lt;, \&gt;=,
\&lt;=</p></li>
<li><p>The logical operators supported are: AND</p></li>
<li><p>The data types supported are integer, long, date(yyyy-MM-dd),
timestamp(yyyy-MM-dd HH:mm:ssXXX or yyyy-MM-dd HH:mm:ss"), string and
decimal.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="lakeformation_get_table_objects_:_MaxResults">MaxResults</code></td>
<td><p>Specifies how many values to return in a page.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_get_table_objects_:_NextToken">NextToken</code></td>
<td><p>A continuation token if this is not the first call to retrieve
these objects.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Objects = list(
        list(
          PartitionValues = list(
            "string"
          ),
          Objects = list(
            list(
              Uri = "string",
              ETag = "string",
              Size = 123
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_table_objects(
      CatalogId = "string",
      DatabaseName = "string",
      TableName = "string",
      TransactionId = "string",
      QueryAsOfTime = as.POSIXct(
        "2015-01-01"
      ),
      PartitionPredicate = "string",
      MaxResults = 123,
      NextToken = "string"
    )
