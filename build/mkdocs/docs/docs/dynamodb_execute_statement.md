<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_execute_statement</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation allows you to perform reads and singleton writes on data stored in DynamoDB, using PartiQL

### Description

This operation allows you to perform reads and singleton writes on data
stored in DynamoDB, using PartiQL.

For PartiQL reads (`SELECT` statement), if the total number of processed
items exceeds the maximum dataset size limit of 1 MB, the read stops and
results are returned to the user as a `LastEvaluatedKey` value to
continue the read in a subsequent operation. If the filter criteria in
`WHERE` clause does not match any data, the read will return an empty
result set.

A single `SELECT` statement response can return up to the maximum number
of items (if using the Limit parameter) or a maximum of 1 MB of data
(and then apply any filtering to the results using `WHERE` clause). If
`LastEvaluatedKey` is present in the response, you need to paginate the
result set. If `NextToken` is present, you need to paginate the result
set and include `NextToken`.

### Usage

    dynamodb_execute_statement(Statement, Parameters, ConsistentRead,
      NextToken, ReturnConsumedCapacity, Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dynamodb_execute_statement_:_Statement">Statement</code></td>
<td><p>[required] The PartiQL statement representing the operation to
run.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_execute_statement_:_Parameters">Parameters</code></td>
<td><p>The parameters for the PartiQL statement, if any.</p></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_execute_statement_:_ConsistentRead">ConsistentRead</code></td>
<td><p>The consistency of a read operation. If set to <code>true</code>,
then a strongly consistent read is used; otherwise, an eventually
consistent read is used.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_execute_statement_:_NextToken">NextToken</code></td>
<td><p>Set this value to get remaining results, if
<code>NextToken</code> was returned in the statement response.</p></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_execute_statement_:_ReturnConsumedCapacity">ReturnConsumedCapacity</code></td>
<td></td>
</tr>
<tr class="even">
<td><code id="dynamodb_execute_statement_:_Limit">Limit</code></td>
<td><p>The maximum number of items to evaluate (not necessarily the
number of matching items). If DynamoDB processes the number of items up
to the limit while processing the results, it stops the operation and
returns the matching values up to that point, along with a key in
<code>LastEvaluatedKey</code> to apply in a subsequent operation so you
can pick up where you left off. Also, if the processed dataset size
exceeds 1 MB before DynamoDB reaches this limit, it stops the operation
and returns the matching values up to the limit, and a key in
<code>LastEvaluatedKey</code> to apply in a subsequent operation to
continue the operation.</p></td>
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
      NextToken = "string",
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
      ),
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
      )
    )

### Request syntax

    svc$execute_statement(
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
      ConsistentRead = TRUE|FALSE,
      NextToken = "string",
      ReturnConsumedCapacity = "INDEXES"|"TOTAL"|"NONE",
      Limit = 123
    )
