<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_batch_write_item</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The BatchWriteItem operation puts or deletes multiple items in one or more tables

### Description

The `batch_write_item` operation puts or deletes multiple items in one
or more tables. A single call to `batch_write_item` can transmit up to
16MB of data over the network, consisting of up to 25 item put or delete
operations. While individual items can be up to 400 KB once stored, it's
important to note that an item's representation might be greater than
400KB while being sent in DynamoDB's JSON format for the API call. For
more details on this distinction, see [Naming Rules and Data
Types](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.NamingRulesDataTypes.html).

`batch_write_item` cannot update items. If you perform a
`batch_write_item` operation on an existing item, that item's values
will be overwritten by the operation and it will appear like it was
updated. To update items, we recommend you use the `update_item` action.

The individual `put_item` and `delete_item` operations specified in
`batch_write_item` are atomic; however `batch_write_item` as a whole is
not. If any requested operations fail because the table's provisioned
throughput is exceeded or an internal processing failure occurs, the
failed operations are returned in the `UnprocessedItems` response
parameter. You can investigate and optionally resend the requests.
Typically, you would call `batch_write_item` in a loop. Each iteration
would check for unprocessed items and submit a new `batch_write_item`
request with those unprocessed items until all items have been
processed.

If *none* of the items can be processed due to insufficient provisioned
throughput on all of the tables in the request, then `batch_write_item`
returns a `ProvisionedThroughputExceededException`.

If DynamoDB returns any unprocessed items, you should retry the batch
operation on those items. However, *we strongly recommend that you use
an exponential backoff algorithm*. If you retry the batch operation
immediately, the underlying read or write requests can still fail due to
throttling on the individual tables. If you delay the batch operation
using exponential backoff, the individual requests in the batch are much
more likely to succeed.

For more information, see [Batch Operations and Error
Handling](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Programming.Errors.html#Programming.Errors.BatchOperations)
in the *Amazon DynamoDB Developer Guide*.

With `batch_write_item`, you can efficiently write or delete large
amounts of data, such as from Amazon EMR, or copy data from another
database into DynamoDB. In order to improve performance with these
large-scale operations, `batch_write_item` does not behave in the same
way as individual `put_item` and `delete_item` calls would. For example,
you cannot specify conditions on individual put and delete requests, and
`batch_write_item` does not return deleted items in the response.

If you use a programming language that supports concurrency, you can use
threads to write items in parallel. Your application must include the
necessary logic to manage the threads. With languages that don't support
threading, you must update or delete the specified items one at a time.
In both situations, `batch_write_item` performs the specified put and
delete operations in parallel, giving you the power of the thread pool
approach without having to introduce complexity into your application.

Parallel processing reduces latency, but each specified put and delete
request consumes the same number of write capacity units whether it is
processed in parallel or not. Delete operations on nonexistent items
consume one write capacity unit.

If one or more of the following is true, DynamoDB rejects the entire
batch write operation:

-   One or more tables specified in the `batch_write_item` request does
    not exist.

-   Primary key attributes specified on an item in the request do not
    match those in the corresponding table's primary key schema.

-   You try to perform multiple operations on the same item in the same
    `batch_write_item` request. For example, you cannot put and delete
    the same item in the same `batch_write_item` request.

-   Your request contains at least two items with identical hash and
    range keys (which essentially is two put operations).

-   There are more than 25 requests in the batch.

-   Any individual item in a batch exceeds 400 KB.

-   The total request size exceeds 16 MB.

### Usage

    dynamodb_batch_write_item(RequestItems, ReturnConsumedCapacity,
      ReturnItemCollectionMetrics)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dynamodb_batch_write_item_:_RequestItems">RequestItems</code></td>
<td><p>[required] A map of one or more table names and, for each table,
a list of operations to be performed (<code>DeleteRequest</code> or
<code>PutRequest</code>). Each element in the map consists of the
following:</p>
<ul>
<li><p><code>DeleteRequest</code> - Perform a <code>delete_item</code>
operation on the specified item. The item to be deleted is identified by
a <code>Key</code> subelement:</p>
<ul>
<li><p><code>Key</code> - A map of primary key attribute values that
uniquely identify the item. Each entry in this map consists of an
attribute name and an attribute value. For each primary key, you must
provide <em>all</em> of the key attributes. For example, with a simple
primary key, you only need to provide a value for the partition key. For
a composite primary key, you must provide values for <em>both</em> the
partition key and the sort key.</p></li>
</ul></li>
<li><p><code>PutRequest</code> - Perform a <code>put_item</code>
operation on the specified item. The item to be put is identified by an
<code>Item</code> subelement:</p>
<ul>
<li><p><code>Item</code> - A map of attributes and their values. Each
entry in this map consists of an attribute name and an attribute value.
Attribute values must not be null; string and binary type attributes
must have lengths greater than zero; and set type attributes must not be
empty. Requests that contain empty values are rejected with a
<code>ValidationException</code> exception.</p>
<p>If you specify any attributes that are part of an index key, then the
data types for those attributes must match those of the schema in the
table's attribute definition.</p></li>
</ul></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_batch_write_item_:_ReturnConsumedCapacity">ReturnConsumedCapacity</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_batch_write_item_:_ReturnItemCollectionMetrics">ReturnItemCollectionMetrics</code></td>
<td><p>Determines whether item collection metrics are returned. If set
to <code>SIZE</code>, the response includes statistics about item
collections, if any, that were modified during the operation are
returned in the response. If set to <code>NONE</code> (the default), no
statistics are returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UnprocessedItems = list(
        list(
          list(
            PutRequest = list(
              Item = list(
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
            DeleteRequest = list(
              Key = list(
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
          )
        )
      ),
      ItemCollectionMetrics = list(
        list(
          list(
            ItemCollectionKey = list(
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
            SizeEstimateRangeGB = list(
              123.0
            )
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

    svc$batch_write_item(
      RequestItems = list(
        list(
          list(
            PutRequest = list(
              Item = list(
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
            DeleteRequest = list(
              Key = list(
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
          )
        )
      ),
      ReturnConsumedCapacity = "INDEXES"|"TOTAL"|"NONE",
      ReturnItemCollectionMetrics = "SIZE"|"NONE"
    )

### Examples

    ## Not run: 
    # This example adds three new items to the Music table using a batch of
    # three PutItem requests.
    svc$batch_write_item(
      RequestItems = list(
        Music = list(
          list(
            PutRequest = list(
              Item = list(
                AlbumTitle = list(
                  S = "Somewhat Famous"
                ),
                Artist = list(
                  S = "No One You Know"
                ),
                SongTitle = list(
                  S = "Call Me Today"
                )
              )
            )
          ),
          list(
            PutRequest = list(
              Item = list(
                AlbumTitle = list(
                  S = "Songs About Life"
                ),
                Artist = list(
                  S = "Acme Band"
                ),
                SongTitle = list(
                  S = "Happy Day"
                )
              )
            )
          ),
          list(
            PutRequest = list(
              Item = list(
                AlbumTitle = list(
                  S = "Blue Sky Blues"
                ),
                Artist = list(
                  S = "No One You Know"
                ),
                SongTitle = list(
                  S = "Scared of My Shadow"
                )
              )
            )
          )
        )
      )
    )

    ## End(Not run)
