<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lakeformation_cancel_transaction</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attempts to cancel the specified transaction

### Description

Attempts to cancel the specified transaction. Returns an exception if
the transaction was previously committed.

### Usage

    lakeformation_cancel_transaction(TransactionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lakeformation_cancel_transaction_:_TransactionId">TransactionId</code></td>
<td><p>[required] The transaction to cancel.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$cancel_transaction(
      TransactionId = "string"
    )
