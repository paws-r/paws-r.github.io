<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lakeformation_list_transactions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns metadata about transactions and their status

### Description

Returns metadata about transactions and their status. To prevent the
response from growing indefinitely, only uncommitted transactions and
those available for time-travel queries are returned.

This operation can help you identify uncommitted transactions or to get
information about transactions.

### Usage

    lakeformation_list_transactions(CatalogId, StatusFilter, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lakeformation_list_transactions_:_CatalogId">CatalogId</code></td>
<td><p>The catalog for which to list transactions. Defaults to the
account ID of the caller.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_list_transactions_:_StatusFilter">StatusFilter</code></td>
<td><p>A filter indicating the status of transactions to return. Options
are ALL | COMPLETED | COMMITTED | ABORTED | ACTIVE. The default is
<code>ALL</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="lakeformation_list_transactions_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of transactions to return in a single
call.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_list_transactions_:_NextToken">NextToken</code></td>
<td><p>A continuation token if this is not the first call to retrieve
transactions.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Transactions = list(
        list(
          TransactionId = "string",
          TransactionStatus = "ACTIVE"|"COMMITTED"|"ABORTED"|"COMMIT_IN_PROGRESS",
          TransactionStartTime = as.POSIXct(
            "2015-01-01"
          ),
          TransactionEndTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_transactions(
      CatalogId = "string",
      StatusFilter = "ALL"|"COMPLETED"|"ACTIVE"|"COMMITTED"|"ABORTED",
      MaxResults = 123,
      NextToken = "string"
    )
