<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lakeformation_extend_transaction</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Indicates to the service that the specified transaction is still active and should not be treated as idle and aborted

### Description

Indicates to the service that the specified transaction is still active
and should not be treated as idle and aborted.

Write transactions that remain idle for a long period are automatically
aborted unless explicitly extended.

### Usage

    lakeformation_extend_transaction(TransactionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lakeformation_extend_transaction_:_TransactionId">TransactionId</code></td>
<td><p>The transaction to extend.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$extend_transaction(
      TransactionId = "string"
    )
