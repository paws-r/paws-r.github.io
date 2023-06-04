<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_batch_execute_statement</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation allows you to perform batch reads or writes on data stored in DynamoDB, using PartiQL

### Description

This operation allows you to perform batch reads or writes on data
stored in DynamoDB, using PartiQL. Each read statement in a
`batch_execute_statement` must specify an equality condition on all key
attributes. This enforces that each `SELECT` statement in a batch
returns at most a single item.

The entire batch must consist of either read statements or write
statements, you cannot mix both in one batch.

A HTTP 200 response does not mean that all statements in the
BatchExecuteStatement succeeded. Error details for individual statements
can be found under the
[Error](https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_BatchStatementResponse.html#DDB-Type-BatchStatementResponse-Error)
field of the `BatchStatementResponse` for each statement.

### Usage

    dynamodb_batch_execute_statement(Statements, ReturnConsumedCapacity)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dynamodb_batch_execute_statement_:_Statements">Statements</code></td>
<td><p>[required] The list of PartiQL statements representing the batch
to run.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_batch_execute_statement_:_ReturnConsumedCapacity">ReturnConsumedCapacity</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Responses = list(
        list(
          Error = list(
            Code = "ConditionalCheckFailed"|"ItemCollectionSizeLimitExceeded"|"RequestLimitExceeded"|"ValidationError"|"ProvisionedThroughputExceeded"|"TransactionConflict"|"ThrottlingError"|"InternalServerError"|"ResourceNotFound"|"AccessDenied"|"DuplicateItem",
            Message = "string"
          ),
          TableName = "string",
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

    svc$batch_execute_statement(
      Statements = list(
        list(
          Statement = "string",
          Parameters = list(
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
      ),
      ReturnConsumedCapacity = "INDEXES"|"TOTAL"|"NONE"
    )
