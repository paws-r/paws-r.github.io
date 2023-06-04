<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lakeformation_commit_transaction</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attempts to commit the specified transaction

### Description

Attempts to commit the specified transaction. Returns an exception if
the transaction was previously aborted. This API action is idempotent if
called multiple times for the same transaction.

### Usage

    lakeformation_commit_transaction(TransactionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lakeformation_commit_transaction_:_TransactionId">TransactionId</code></td>
<td><p>[required] The transaction to commit.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TransactionStatus = "ACTIVE"|"COMMITTED"|"ABORTED"|"COMMIT_IN_PROGRESS"
    )

### Request syntax

    svc$commit_transaction(
      TransactionId = "string"
    )
