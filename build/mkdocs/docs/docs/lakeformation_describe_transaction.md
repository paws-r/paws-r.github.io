<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lakeformation_describe_transaction</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the details of a single transaction

### Description

Returns the details of a single transaction.

### Usage

    lakeformation_describe_transaction(TransactionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lakeformation_describe_transaction_:_TransactionId">TransactionId</code></td>
<td><p>[required] The transaction for which to return status.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TransactionDescription = list(
        TransactionId = "string",
        TransactionStatus = "ACTIVE"|"COMMITTED"|"ABORTED"|"COMMIT_IN_PROGRESS",
        TransactionStartTime = as.POSIXct(
          "2015-01-01"
        ),
        TransactionEndTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$describe_transaction(
      TransactionId = "string"
    )
