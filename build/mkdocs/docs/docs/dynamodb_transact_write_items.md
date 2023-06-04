<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_transact_write_items</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## TransactWriteItems is a synchronous write operation that groups up to 100 action requests

### Description

`transact_write_items` is a synchronous write operation that groups up
to 100 action requests. These actions can target items in different
tables, but not in different Amazon Web Services accounts or Regions,
and no two actions can target the same item. For example, you cannot
both `ConditionCheck` and `Update` the same item. The aggregate size of
the items in the transaction cannot exceed 4 MB.

The actions are completed atomically so that either all of them succeed,
or all of them fail. They are defined by the following objects:

-   `Put`  —   Initiates a `put_item` operation to write a new item.
    This structure specifies the primary key of the item to be written,
    the name of the table to write it in, an optional condition
    expression that must be satisfied for the write to succeed, a list
    of the item's attributes, and a field indicating whether to retrieve
    the item's attributes if the condition is not met.

-   `Update`  —   Initiates an `update_item` operation to update an
    existing item. This structure specifies the primary key of the item
    to be updated, the name of the table where it resides, an optional
    condition expression that must be satisfied for the update to
    succeed, an expression that defines one or more attributes to be
    updated, and a field indicating whether to retrieve the item's
    attributes if the condition is not met.

-   `Delete`  —   Initiates a `delete_item` operation to delete an
    existing item. This structure specifies the primary key of the item
    to be deleted, the name of the table where it resides, an optional
    condition expression that must be satisfied for the deletion to
    succeed, and a field indicating whether to retrieve the item's
    attributes if the condition is not met.

-   `ConditionCheck`  —   Applies a condition to an item that is not
    being modified by the transaction. This structure specifies the
    primary key of the item to be checked, the name of the table where
    it resides, a condition expression that must be satisfied for the
    transaction to succeed, and a field indicating whether to retrieve
    the item's attributes if the condition is not met.

DynamoDB rejects the entire `transact_write_items` request if any of the
following is true:

-   A condition in one of the condition expressions is not met.

-   An ongoing operation is in the process of updating the same item.

-   There is insufficient provisioned capacity for the transaction to be
    completed.

-   An item size becomes too large (bigger than 400 KB), a local
    secondary index (LSI) becomes too large, or a similar validation
    error occurs because of changes made by the transaction.

-   The aggregate size of the items in the transaction exceeds 4 MB.

-   There is a user error, such as an invalid data format.

### Usage

    dynamodb_transact_write_items(TransactItems, ReturnConsumedCapacity,
      ReturnItemCollectionMetrics, ClientRequestToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dynamodb_transact_write_items_:_TransactItems">TransactItems</code></td>
<td><p>[required] An ordered array of up to 100
<code>TransactWriteItem</code> objects, each of which contains a
<code>ConditionCheck</code>, <code>Put</code>, <code>Update</code>, or
<code>Delete</code> object. These can operate on items in different
tables, but the tables must reside in the same Amazon Web Services
account and Region, and no two of them can operate on the same
item.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_transact_write_items_:_ReturnConsumedCapacity">ReturnConsumedCapacity</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_transact_write_items_:_ReturnItemCollectionMetrics">ReturnItemCollectionMetrics</code></td>
<td><p>Determines whether item collection metrics are returned. If set
to <code>SIZE</code>, the response includes statistics about item
collections (if any), that were modified during the operation and are
returned in the response. If set to <code>NONE</code> (the default), no
statistics are returned.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_transact_write_items_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>Providing a <code>ClientRequestToken</code> makes the call to
<code>transact_write_items</code> idempotent, meaning that multiple
identical calls have the same effect as one single call.</p>
<p>Although multiple identical calls using the same client request token
produce the same result on the server (no side effects), the responses
to the calls might not be the same. If the
<code>ReturnConsumedCapacity</code> parameter is set, then the initial
<code>transact_write_items</code> call returns the amount of write
capacity units consumed in making the changes. Subsequent
<code>transact_write_items</code> calls with the same client token
return the number of read capacity units consumed in reading the
item.</p>
<p>A client request token is valid for 10 minutes after the first
request that uses it is completed. After 10 minutes, any request with
the same client token is treated as a new request. Do not resubmit the
same request with the same client token for more than 10 minutes, or the
result might not be idempotent.</p>
<p>If you submit a request with the same client token but a change in
other parameters within the 10-minute idempotency window, DynamoDB
returns an <code>IdempotentParameterMismatch</code> exception.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
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
      )
    )

### Request syntax

    svc$transact_write_items(
      TransactItems = list(
        list(
          ConditionCheck = list(
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
            ),
            TableName = "string",
            ConditionExpression = "string",
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
            ReturnValuesOnConditionCheckFailure = "ALL_OLD"|"NONE"
          ),
          Put = list(
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
            ),
            TableName = "string",
            ConditionExpression = "string",
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
            ReturnValuesOnConditionCheckFailure = "ALL_OLD"|"NONE"
          ),
          Delete = list(
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
            ),
            TableName = "string",
            ConditionExpression = "string",
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
            ReturnValuesOnConditionCheckFailure = "ALL_OLD"|"NONE"
          ),
          Update = list(
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
            ),
            UpdateExpression = "string",
            TableName = "string",
            ConditionExpression = "string",
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
            ReturnValuesOnConditionCheckFailure = "ALL_OLD"|"NONE"
          )
        )
      ),
      ReturnConsumedCapacity = "INDEXES"|"TOTAL"|"NONE",
      ReturnItemCollectionMetrics = "SIZE"|"NONE",
      ClientRequestToken = "string"
    )
