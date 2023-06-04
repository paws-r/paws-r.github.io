<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_batch_get_item</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The BatchGetItem operation returns the attributes of one or more items from one or more tables

### Description

The `batch_get_item` operation returns the attributes of one or more
items from one or more tables. You identify requested items by primary
key.

A single operation can retrieve up to 16 MB of data, which can contain
as many as 100 items. `batch_get_item` returns a partial result if the
response size limit is exceeded, the table's provisioned throughput is
exceeded, or an internal processing failure occurs. If a partial result
is returned, the operation returns a value for `UnprocessedKeys`. You
can use this value to retry the operation starting with the next item to
get.

If you request more than 100 items, `batch_get_item` returns a
`ValidationException` with the message "Too many items requested for the
BatchGetItem call."

For example, if you ask to retrieve 100 items, but each individual item
is 300 KB in size, the system returns 52 items (so as not to exceed the
16 MB limit). It also returns an appropriate `UnprocessedKeys` value so
you can get the next page of results. If desired, your application can
include its own logic to assemble the pages of results into one dataset.

If *none* of the items can be processed due to insufficient provisioned
throughput on all of the tables in the request, then `batch_get_item`
returns a `ProvisionedThroughputExceededException`. If *at least one* of
the items is successfully processed, then `batch_get_item` completes
successfully, while returning the keys of the unread items in
`UnprocessedKeys`.

If DynamoDB returns any unprocessed items, you should retry the batch
operation on those items. However, *we strongly recommend that you use
an exponential backoff algorithm*. If you retry the batch operation
immediately, the underlying read or write requests can still fail due to
throttling on the individual tables. If you delay the batch operation
using exponential backoff, the individual requests in the batch are much
more likely to succeed.

For more information, see [Batch Operations and Error
Handling](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Programming.Errors.html#BatchOperations)
in the *Amazon DynamoDB Developer Guide*.

By default, `batch_get_item` performs eventually consistent reads on
every table in the request. If you want strongly consistent reads
instead, you can set `ConsistentRead` to `true` for any or all tables.

In order to minimize response latency, `batch_get_item` may retrieve
items in parallel.

When designing your application, keep in mind that DynamoDB does not
return items in any particular order. To help parse the response by
item, include the primary key values for the items in your request in
the `ProjectionExpression` parameter.

If a requested item does not exist, it is not returned in the result.
Requests for nonexistent items consume the minimum read capacity units
according to the type of read. For more information, see [Working with
Tables](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#CapacityUnitCalculations)
in the *Amazon DynamoDB Developer Guide*.

### Usage

    dynamodb_batch_get_item(RequestItems, ReturnConsumedCapacity)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dynamodb_batch_get_item_:_RequestItems">RequestItems</code></td>
<td><p>[required] A map of one or more table names and, for each table,
a map that describes one or more items to retrieve from that table. Each
table name can be used only once per <code>batch_get_item</code>
request.</p>
<p>Each element in the map of items to retrieve consists of the
following:</p>
<ul>
<li><p><code>ConsistentRead</code> - If <code>true</code>, a strongly
consistent read is used; if <code>false</code> (the default), an
eventually consistent read is used.</p></li>
<li><p><code>ExpressionAttributeNames</code> - One or more substitution
tokens for attribute names in the <code>ProjectionExpression</code>
parameter. The following are some use cases for using
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
<p>For more information about expression attribute names, see <a
href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.Attributes.html">Accessing
Item Attributes</a> in the <em>Amazon DynamoDB Developer
Guide</em>.</p></li>
<li><p><code>Keys</code> - An array of primary key attribute values that
define specific items in the table. For each primary key, you must
provide <em>all</em> of the key attributes. For example, with a simple
primary key, you only need to provide the partition key value. For a
composite key, you must provide <em>both</em> the partition key value
and the sort key value.</p></li>
<li><p><code>ProjectionExpression</code> - A string that identifies one
or more attributes to retrieve from the table. These attributes can
include scalars, sets, or elements of a JSON document. The attributes in
the expression must be separated by commas.</p>
<p>If no attribute names are specified, then all attributes are
returned. If any of the requested attributes are not found, they do not
appear in the result.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.Attributes.html">Accessing
Item Attributes</a> in the <em>Amazon DynamoDB Developer
Guide</em>.</p></li>
<li><p><code>AttributesToGet</code> - This is a legacy parameter. Use
<code>ProjectionExpression</code> instead. For more information, see <a
href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html">AttributesToGet</a>
in the <em>Amazon DynamoDB Developer Guide</em>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_batch_get_item_:_ReturnConsumedCapacity">ReturnConsumedCapacity</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Responses = list(
        list(
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
        )
      ),
      UnprocessedKeys = list(
        list(
          Keys = list(
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
          AttributesToGet = list(
            "string"
          ),
          ConsistentRead = TRUE|FALSE,
          ProjectionExpression = "string",
          ExpressionAttributeNames = list(
            "string"
          )
        )
      ),
      ConsumedCapacity = list(
        list(
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
    )

### Request syntax

    svc$batch_get_item(
      RequestItems = list(
        list(
          Keys = list(
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
          AttributesToGet = list(
            "string"
          ),
          ConsistentRead = TRUE|FALSE,
          ProjectionExpression = "string",
          ExpressionAttributeNames = list(
            "string"
          )
        )
      ),
      ReturnConsumedCapacity = "INDEXES"|"TOTAL"|"NONE"
    )

### Examples

    ## Not run: 
    # This example reads multiple items from the Music table using a batch of
    # three GetItem requests.  Only the AlbumTitle attribute is returned.
    svc$batch_get_item(
      RequestItems = list(
        Music = list(
          Keys = list(
            list(
              Artist = list(
                S = "No One You Know"
              ),
              SongTitle = list(
                S = "Call Me Today"
              )
            ),
            list(
              Artist = list(
                S = "Acme Band"
              ),
              SongTitle = list(
                S = "Happy Day"
              )
            ),
            list(
              Artist = list(
                S = "No One You Know"
              ),
              SongTitle = list(
                S = "Scared of My Shadow"
              )
            )
          ),
          ProjectionExpression = "AlbumTitle"
        )
      )
    )

    ## End(Not run)
