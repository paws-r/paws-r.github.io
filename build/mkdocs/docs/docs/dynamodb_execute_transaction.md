<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_execute_transaction</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation allows you to perform transactional reads or writes on data stored in DynamoDB, using PartiQL

### Description

This operation allows you to perform transactional reads or writes on
data stored in DynamoDB, using PartiQL.

The entire transaction must consist of either read statements or write
statements, you cannot mix both in one transaction. The EXISTS function
is an exception and can be used to check the condition of specific
attributes of the item in a similar manner to `ConditionCheck` in the
`transact_write_items` API.

### Usage

    dynamodb_execute_transaction(TransactStatements, ClientRequestToken,
      ReturnConsumedCapacity)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dynamodb_execute_transaction_:_TransactStatements">TransactStatements</code></td>
<td><p>[required] The list of PartiQL statements representing the
transaction to run.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_execute_transaction_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>Set this value to get remaining results, if
<code>NextToken</code> was returned in the statement response.</p></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_execute_transaction_:_ReturnConsumedCapacity">ReturnConsumedCapacity</code></td>
<td><p>Determines the level of detail about either provisioned or
on-demand throughput consumption that is returned in the response. For
more information, see <code>transact_get_items</code> and
<code>transact_write_items</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
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

    svc$execute_transaction(
      TransactStatements = list(
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
          )
        )
      ),
      ClientRequestToken = "string",
      ReturnConsumedCapacity = "INDEXES"|"TOTAL"|"NONE"
    )
