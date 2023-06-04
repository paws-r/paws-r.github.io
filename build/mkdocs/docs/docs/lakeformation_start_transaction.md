<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lakeformation_start_transaction</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a new transaction and returns its transaction ID

### Description

Starts a new transaction and returns its transaction ID. Transaction IDs
are opaque objects that you can use to identify a transaction.

### Usage

    lakeformation_start_transaction(TransactionType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lakeformation_start_transaction_:_TransactionType">TransactionType</code></td>
<td><p>Indicates whether this transaction should be read only or read
and write. Writes made using a read-only transaction ID will be
rejected. Read-only transactions do not need to be committed.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TransactionId = "string"
    )

### Request syntax

    svc$start_transaction(
      TransactionType = "READ_AND_WRITE"|"READ_ONLY"
    )
