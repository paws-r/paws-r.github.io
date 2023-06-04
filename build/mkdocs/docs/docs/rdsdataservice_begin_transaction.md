<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rdsdataservice_begin_transaction</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a SQL transaction

### Description

Starts a SQL transaction.

A transaction can run for a maximum of 24 hours. A transaction is
terminated and rolled back automatically after 24 hours.

A transaction times out if no calls use its transaction ID in three
minutes. If a transaction times out before it's committed, it's rolled
back automatically.

DDL statements inside a transaction cause an implicit commit. We
recommend that you run each DDL statement in a separate
`execute_statement` call with `continueAfterTimeout` enabled.

### Usage

    rdsdataservice_begin_transaction(resourceArn, secretArn, database,
      schema)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rdsdataservice_begin_transaction_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Aurora
Serverless DB cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="rdsdataservice_begin_transaction_:_secretArn">secretArn</code></td>
<td><p>[required] The name or ARN of the secret that enables access to
the DB cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="rdsdataservice_begin_transaction_:_database">database</code></td>
<td><p>The name of the database.</p></td>
</tr>
<tr class="even">
<td><code
id="rdsdataservice_begin_transaction_:_schema">schema</code></td>
<td><p>The name of the database schema.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      transactionId = "string"
    )

### Request syntax

    svc$begin_transaction(
      resourceArn = "string",
      secretArn = "string",
      database = "string",
      schema = "string"
    )
