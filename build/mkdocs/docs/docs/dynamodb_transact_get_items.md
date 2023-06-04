<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_transact_get_items</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## TransactGetItems is a synchronous operation that atomically retrieves multiple items from one or more tables (but not from indexes) in a single account and Region

### Description

`transact_get_items` is a synchronous operation that atomically
retrieves multiple items from one or more tables (but not from indexes)
in a single account and Region. A `transact_get_items` call can contain
up to 100 `TransactGetItem` objects, each of which contains a `Get`
structure that specifies an item to retrieve from a table in the account
and Region. A call to `transact_get_items` cannot retrieve items from
tables in more than one Amazon Web Services account or Region. The
aggregate size of the items in the transaction cannot exceed 4 MB.

DynamoDB rejects the entire `transact_get_items` request if any of the
following is true:

-   A conflicting operation is in the process of updating an item to be
    read.

-   There is insufficient provisioned capacity for the transaction to be
    completed.

-   There is a user error, such as an invalid data format.

-   The aggregate size of the items in the transaction exceeded 4 MB.

### Usage

    dynamodb_transact_get_items(TransactItems, ReturnConsumedCapacity)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dynamodb_transact_get_items_:_TransactItems">TransactItems</code></td>
<td><p>[required] An ordered array of up to 100
<code>TransactGetItem</code> objects, each of which contains a
<code>Get</code> structure.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_transact_get_items_:_ReturnConsumedCapacity">ReturnConsumedCapacity</code></td>
<td><p>A value of <code>TOTAL</code> causes consumed capacity
information to be returned, and a value of <code>NONE</code> prevents
that information from being returned. No other value is valid.</p></td>
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
      Responses = list(
        list(
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
        )
      )
    )

### Request syntax

    svc$transact_get_items(
      TransactItems = list(
        list(
          Get = list(
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
            ProjectionExpression = "string",
            ExpressionAttributeNames = list(
              "string"
            )
          )
        )
      ),
      ReturnConsumedCapacity = "INDEXES"|"TOTAL"|"NONE"
    )
