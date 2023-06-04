<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_scan</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The Scan operation returns one or more items and item attributes by accessing every item in a table or a secondary index

### Description

The `scan` operation returns one or more items and item attributes by
accessing every item in a table or a secondary index. To have DynamoDB
return fewer items, you can provide a `FilterExpression` operation.

If the total number of scanned items exceeds the maximum dataset size
limit of 1 MB, the scan stops and results are returned to the user as a
`LastEvaluatedKey` value to continue the scan in a subsequent operation.
The results also include the number of items exceeding the limit. A scan
can result in no table data meeting the filter criteria.

A single `scan` operation reads up to the maximum number of items set
(if using the `Limit` parameter) or a maximum of 1 MB of data and then
apply any filtering to the results using `FilterExpression`. If
`LastEvaluatedKey` is present in the response, you need to paginate the
result set. For more information, see [Paginating the
Results](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Scan.html#Scan.Pagination)
in the *Amazon DynamoDB Developer Guide*.

`scan` operations proceed sequentially; however, for faster performance
on a large table or secondary index, applications can request a parallel
`scan` operation by providing the `Segment` and `TotalSegments`
parameters. For more information, see [Parallel
Scan](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Scan.html#Scan.ParallelScan)
in the *Amazon DynamoDB Developer Guide*.

`scan` uses eventually consistent reads when accessing the data in a
table; therefore, the result set might not include the changes to data
in the table immediately before the operation began. If you need a
consistent copy of the data, as of the time that the `scan` begins, you
can set the `ConsistentRead` parameter to `true`.

### Usage

    dynamodb_scan(TableName, IndexName, AttributesToGet, Limit, Select,
      ScanFilter, ConditionalOperator, ExclusiveStartKey,
      ReturnConsumedCapacity, TotalSegments, Segment, ProjectionExpression,
      FilterExpression, ExpressionAttributeNames, ExpressionAttributeValues,
      ConsistentRead)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="dynamodb_scan_:_TableName">TableName</code></td>
<td><p>[required] The name of the table containing the requested items;
or, if you provide <code>IndexName</code>, the name of the table to
which that index belongs.</p></td>
</tr>
<tr class="even">
<td><code id="dynamodb_scan_:_IndexName">IndexName</code></td>
<td><p>The name of a secondary index to scan. This index can be any
local secondary index or global secondary index. Note that if you use
the <code>IndexName</code> parameter, you must also provide
<code>TableName</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_scan_:_AttributesToGet">AttributesToGet</code></td>
<td><p>This is a legacy parameter. Use <code>ProjectionExpression</code>
instead. For more information, see <a
href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html">AttributesToGet</a>
in the <em>Amazon DynamoDB Developer Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="dynamodb_scan_:_Limit">Limit</code></td>
<td><p>The maximum number of items to evaluate (not necessarily the
number of matching items). If DynamoDB processes the number of items up
to the limit while processing the results, it stops the operation and
returns the matching values up to that point, and a key in
<code>LastEvaluatedKey</code> to apply in a subsequent operation, so
that you can pick up where you left off. Also, if the processed dataset
size exceeds 1 MB before DynamoDB reaches this limit, it stops the
operation and returns the matching values up to the limit, and a key in
<code>LastEvaluatedKey</code> to apply in a subsequent operation to
continue the operation. For more information, see <a
href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Query.html">Working
with Queries</a> in the <em>Amazon DynamoDB Developer
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code id="dynamodb_scan_:_Select">Select</code></td>
<td><p>The attributes to be returned in the result. You can retrieve all
item attributes, specific item attributes, the count of matching items,
or in the case of an index, some or all of the attributes projected into
the index.</p>
<ul>
<li><p><code>ALL_ATTRIBUTES</code> - Returns all of the item attributes
from the specified table or index. If you query a local secondary index,
then for each matching item in the index, DynamoDB fetches the entire
item from the parent table. If the index is configured to project all
item attributes, then all of the data can be obtained from the local
secondary index, and no fetching is required.</p></li>
<li><p><code>ALL_PROJECTED_ATTRIBUTES</code> - Allowed only when
querying an index. Retrieves all attributes that have been projected
into the index. If the index is configured to project all attributes,
this return value is equivalent to specifying
<code>ALL_ATTRIBUTES</code>.</p></li>
<li><p><code>COUNT</code> - Returns the number of matching items, rather
than the matching items themselves. Note that this uses the same
quantity of read capacity units as getting the items, and is subject to
the same item size calculations.</p></li>
<li><p><code>SPECIFIC_ATTRIBUTES</code> - Returns only the attributes
listed in <code>ProjectionExpression</code>. This return value is
equivalent to specifying <code>ProjectionExpression</code> without
specifying any value for <code>Select</code>.</p>
<p>If you query or scan a local secondary index and request only
attributes that are projected into that index, the operation reads only
the index and not the table. If any of the requested attributes are not
projected into the local secondary index, DynamoDB fetches each of these
attributes from the parent table. This extra fetching incurs additional
throughput cost and latency.</p>
<p>If you query or scan a global secondary index, you can only request
attributes that are projected into the index. Global secondary index
queries cannot fetch attributes from the parent table.</p></li>
</ul>
<p>If neither <code>Select</code> nor <code>ProjectionExpression</code>
are specified, DynamoDB defaults to <code>ALL_ATTRIBUTES</code> when
accessing a table, and <code>ALL_PROJECTED_ATTRIBUTES</code> when
accessing an index. You cannot use both <code>Select</code> and
<code>ProjectionExpression</code> together in a single request, unless
the value for <code>Select</code> is <code>SPECIFIC_ATTRIBUTES</code>.
(This usage is equivalent to specifying
<code>ProjectionExpression</code> without any value for
<code>Select</code>.)</p>
<p>If you use the <code>ProjectionExpression</code> parameter, then the
value for <code>Select</code> can only be
<code>SPECIFIC_ATTRIBUTES</code>. Any other value for
<code>Select</code> will return an error.</p></td>
</tr>
<tr class="even">
<td><code id="dynamodb_scan_:_ScanFilter">ScanFilter</code></td>
<td><p>This is a legacy parameter. Use <code>FilterExpression</code>
instead. For more information, see <a
href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ScanFilter.html">ScanFilter</a>
in the <em>Amazon DynamoDB Developer Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_scan_:_ConditionalOperator">ConditionalOperator</code></td>
<td><p>This is a legacy parameter. Use <code>FilterExpression</code>
instead. For more information, see <a
href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html">ConditionalOperator</a>
in the <em>Amazon DynamoDB Developer Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_scan_:_ExclusiveStartKey">ExclusiveStartKey</code></td>
<td><p>The primary key of the first item that this operation will
evaluate. Use the value that was returned for
<code>LastEvaluatedKey</code> in the previous operation.</p>
<p>The data type for <code>ExclusiveStartKey</code> must be String,
Number or Binary. No set data types are allowed.</p>
<p>In a parallel scan, a <code>scan</code> request that includes
<code>ExclusiveStartKey</code> must specify the same segment whose
previous <code>scan</code> returned the corresponding value of
<code>LastEvaluatedKey</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_scan_:_ReturnConsumedCapacity">ReturnConsumedCapacity</code></td>
<td></td>
</tr>
<tr class="even">
<td><code id="dynamodb_scan_:_TotalSegments">TotalSegments</code></td>
<td><p>For a parallel <code>scan</code> request,
<code>TotalSegments</code> represents the total number of segments into
which the <code>scan</code> operation will be divided. The value of
<code>TotalSegments</code> corresponds to the number of application
workers that will perform the parallel scan. For example, if you want to
use four application threads to scan a table or an index, specify a
<code>TotalSegments</code> value of 4.</p>
<p>The value for <code>TotalSegments</code> must be greater than or
equal to 1, and less than or equal to 1000000. If you specify a
<code>TotalSegments</code> value of 1, the <code>scan</code> operation
will be sequential rather than parallel.</p>
<p>If you specify <code>TotalSegments</code>, you must also specify
<code>Segment</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="dynamodb_scan_:_Segment">Segment</code></td>
<td><p>For a parallel <code>scan</code> request, <code>Segment</code>
identifies an individual segment to be scanned by an application
worker.</p>
<p>Segment IDs are zero-based, so the first segment is always 0. For
example, if you want to use four application threads to scan a table or
an index, then the first thread specifies a <code>Segment</code> value
of 0, the second thread specifies 1, and so on.</p>
<p>The value of <code>LastEvaluatedKey</code> returned from a parallel
<code>scan</code> request must be used as <code>ExclusiveStartKey</code>
with the same segment ID in a subsequent <code>scan</code>
operation.</p>
<p>The value for <code>Segment</code> must be greater than or equal to
0, and less than the value provided for <code>TotalSegments</code>.</p>
<p>If you provide <code>Segment</code>, you must also provide
<code>TotalSegments</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_scan_:_ProjectionExpression">ProjectionExpression</code></td>
<td><p>A string that identifies one or more attributes to retrieve from
the specified table or index. These attributes can include scalars,
sets, or elements of a JSON document. The attributes in the expression
must be separated by commas.</p>
<p>If no attribute names are specified, then all attributes will be
returned. If any of the requested attributes are not found, they will
not appear in the result.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.Attributes.html">Specifying
Item Attributes</a> in the <em>Amazon DynamoDB Developer
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_scan_:_FilterExpression">FilterExpression</code></td>
<td><p>A string that contains conditions that DynamoDB applies after the
<code>scan</code> operation, but before the data is returned to you.
Items that do not satisfy the <code>FilterExpression</code> criteria are
not returned.</p>
<p>A <code>FilterExpression</code> is applied after the items have
already been read; the process of filtering does not consume any
additional read capacity units.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Query.html#Query.FilterExpression">Filter
Expressions</a> in the <em>Amazon DynamoDB Developer
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_scan_:_ExpressionAttributeNames">ExpressionAttributeNames</code></td>
<td><p>One or more substitution tokens for attribute names in an
expression. The following are some use cases for using
<code>ExpressionAttributeNames</code>:</p>
<ul>
<li><p>To access an attribute whose name conflicts with a DynamoDB
reserved word.</p></li>
<li><p>To create a placeholder for repeating occurrences of an attribute
name in an expression.</p></li>
<li><p>To prevent special characters in an attribute name from being
misinterpreted in an expression.</p></li>
</ul>
<p>Use the <strong>#</strong> character in an expression to dereference
an attribute name. For example, consider the following attribute
name:</p>
<ul>
<li><p><code>Percentile</code></p></li>
</ul>
<p>The name of this attribute conflicts with a reserved word, so it
cannot be used directly in an expression. (For the complete list of
reserved words, see <a
href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved
Words</a> in the <em>Amazon DynamoDB Developer Guide</em>). To work
around this, you could specify the following for
<code>ExpressionAttributeNames</code>:</p>
<ul>
<li><p><code>{"#P":"Percentile"}</code></p></li>
</ul>
<p>You could then use this substitution in an expression, as in this
example:</p>
<ul>
<li><p><code style="white-space: pre;">⁠#P = :val⁠</code></p></li>
</ul>
<p>Tokens that begin with the <strong>:</strong> character are
<em>expression attribute values</em>, which are placeholders for the
actual value at runtime.</p>
<p>For more information on expression attribute names, see <a
href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.Attributes.html">Specifying
Item Attributes</a> in the <em>Amazon DynamoDB Developer
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_scan_:_ExpressionAttributeValues">ExpressionAttributeValues</code></td>
<td><p>One or more values that can be substituted in an expression.</p>
<p>Use the <strong>:</strong> (colon) character in an expression to
dereference an attribute value. For example, suppose that you wanted to
check whether the value of the <code>ProductStatus</code> attribute was
one of the following:</p>
<p><code>Available | Backordered | Discontinued</code></p>
<p>You would first need to specify
<code>ExpressionAttributeValues</code> as follows:</p>
<p><code
style="white-space: pre;">⁠{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"}, ":disc":{"S":"Discontinued"} }⁠</code></p>
<p>You could then use these values in an expression, such as this:</p>
<p><code
style="white-space: pre;">⁠ProductStatus IN (:avail, :back, :disc)⁠</code></p>
<p>For more information on expression attribute values, see <a
href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.ConditionExpressions.html">Condition
Expressions</a> in the <em>Amazon DynamoDB Developer
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="dynamodb_scan_:_ConsistentRead">ConsistentRead</code></td>
<td><p>A Boolean value that determines the read consistency model during
the scan:</p>
<ul>
<li><p>If <code>ConsistentRead</code> is <code>false</code>, then the
data returned from <code>scan</code> might not contain the results from
other recently completed write operations (<code>put_item</code>,
<code>update_item</code>, or <code>delete_item</code>).</p></li>
<li><p>If <code>ConsistentRead</code> is <code>true</code>, then all of
the write operations that completed before the <code>scan</code> began
are guaranteed to be contained in the <code>scan</code>
response.</p></li>
</ul>
<p>The default setting for <code>ConsistentRead</code> is
<code>false</code>.</p>
<p>The <code>ConsistentRead</code> parameter is not supported on global
secondary indexes. If you scan a global secondary index with
<code>ConsistentRead</code> set to true, you will receive a
<code>ValidationException</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Items = list(
        list(
          list(
            S = "string",
            N = "string",
            B = raw,
            SS = list(
              "string"
            ),
            NS = list(
              "string"
            ),
            BS = list(
              raw
            ),
            M = list(
              list()
            ),
            L = list(
              list()
            ),
            NULL = TRUE|FALSE,
            BOOL = TRUE|FALSE
          )
        )
      ),
      Count = 123,
      ScannedCount = 123,
      LastEvaluatedKey = list(
        list(
          S = "string",
          N = "string",
          B = raw,
          SS = list(
            "string"
          ),
          NS = list(
            "string"
          ),
          BS = list(
            raw
          ),
          M = list(
            list()
          ),
          L = list(
            list()
          ),
          NULL = TRUE|FALSE,
          BOOL = TRUE|FALSE
        )
      ),
      ConsumedCapacity = list(
        TableName = "string",
        CapacityUnits = 123.0,
        ReadCapacityUnits = 123.0,
        WriteCapacityUnits = 123.0,
        Table = list(
          ReadCapacityUnits = 123.0,
          WriteCapacityUnits = 123.0,
          CapacityUnits = 123.0
        ),
        LocalSecondaryIndexes = list(
          list(
            ReadCapacityUnits = 123.0,
            WriteCapacityUnits = 123.0,
            CapacityUnits = 123.0
          )
        ),
        GlobalSecondaryIndexes = list(
          list(
            ReadCapacityUnits = 123.0,
            WriteCapacityUnits = 123.0,
            CapacityUnits = 123.0
          )
        )
      )
    )

### Request syntax

    svc$scan(
      TableName = "string",
      IndexName = "string",
      AttributesToGet = list(
        "string"
      ),
      Limit = 123,
      Select = "ALL_ATTRIBUTES"|"ALL_PROJECTED_ATTRIBUTES"|"SPECIFIC_ATTRIBUTES"|"COUNT",
      ScanFilter = list(
        list(
          AttributeValueList = list(
            list(
              S = "string",
              N = "string",
              B = raw,
              SS = list(
                "string"
              ),
              NS = list(
                "string"
              ),
              BS = list(
                raw
              ),
              M = list(
                list()
              ),
              L = list(
                list()
              ),
              NULL = TRUE|FALSE,
              BOOL = TRUE|FALSE
            )
          ),
          ComparisonOperator = "EQ"|"NE"|"IN"|"LE"|"LT"|"GE"|"GT"|"BETWEEN"|"NOT_NULL"|"NULL"|"CONTAINS"|"NOT_CONTAINS"|"BEGINS_WITH"
        )
      ),
      ConditionalOperator = "AND"|"OR",
      ExclusiveStartKey = list(
        list(
          S = "string",
          N = "string",
          B = raw,
          SS = list(
            "string"
          ),
          NS = list(
            "string"
          ),
          BS = list(
            raw
          ),
          M = list(
            list()
          ),
          L = list(
            list()
          ),
          NULL = TRUE|FALSE,
          BOOL = TRUE|FALSE
        )
      ),
      ReturnConsumedCapacity = "INDEXES"|"TOTAL"|"NONE",
      TotalSegments = 123,
      Segment = 123,
      ProjectionExpression = "string",
      FilterExpression = "string",
      ExpressionAttributeNames = list(
        "string"
      ),
      ExpressionAttributeValues = list(
        list(
          S = "string",
          N = "string",
          B = raw,
          SS = list(
            "string"
          ),
          NS = list(
            "string"
          ),
          BS = list(
            raw
          ),
          M = list(
            list()
          ),
          L = list(
            list()
          ),
          NULL = TRUE|FALSE,
          BOOL = TRUE|FALSE
        )
      ),
      ConsistentRead = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example scans the entire Music table, and then narrows the results
    # to songs by the artist "No One You Know". For each item, only the album
    # title and song title are returned.
    svc$scan(
      ExpressionAttributeNames = list(
        `#AT` = "AlbumTitle",
        `#ST` = "SongTitle"
      ),
      ExpressionAttributeValues = list(
        `:a` = list(
          S = "No One You Know"
        )
      ),
      FilterExpression = "Artist = :a",
      ProjectionExpression = "#ST, #AT",
      TableName = "Music"
    )

    ## End(Not run)
