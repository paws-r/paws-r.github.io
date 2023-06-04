<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rdsdataservice_rollback_transaction</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Performs a rollback of a transaction

### Description

Performs a rollback of a transaction. Rolling back a transaction cancels
its changes.

### Usage

    rdsdataservice_rollback_transaction(resourceArn, secretArn,
      transactionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rdsdataservice_rollback_transaction_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Aurora
Serverless DB cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="rdsdataservice_rollback_transaction_:_secretArn">secretArn</code></td>
<td><p>[required] The name or ARN of the secret that enables access to
the DB cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="rdsdataservice_rollback_transaction_:_transactionId">transactionId</code></td>
<td><p>[required] The identifier of the transaction to roll
back.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      transactionStatus = "string"
    )

### Request syntax

    svc$rollback_transaction(
      resourceArn = "string",
      secretArn = "string",
      transactionId = "string"
    )
