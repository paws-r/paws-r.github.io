<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector2_list_usage_totals</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the Amazon Inspector usage totals over the last 30 days

### Description

Lists the Amazon Inspector usage totals over the last 30 days.

### Usage

    inspector2_list_usage_totals(accountIds, maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector2_list_usage_totals_:_accountIds">accountIds</code></td>
<td><p>The Amazon Web Services account IDs to retrieve usage totals
for.</p></td>
</tr>
<tr class="even">
<td><code
id="inspector2_list_usage_totals_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return in the response.</p></td>
</tr>
<tr class="odd">
<td><code
id="inspector2_list_usage_totals_:_nextToken">nextToken</code></td>
<td><p>A token to use for paginating results that are returned in the
response. Set the value of this parameter to null for the first request
to a list action. For subsequent calls, use the <code>NextToken</code>
value returned from the previous request to continue listing results
after the first page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      totals = list(
        list(
          accountId = "string",
          usage = list(
            list(
              currency = "USD",
              estimatedMonthlyCost = 123.0,
              total = 123.0,
              type = "EC2_INSTANCE_HOURS"|"ECR_INITIAL_SCAN"|"ECR_RESCAN"|"LAMBDA_FUNCTION_HOURS"
            )
          )
        )
      )
    )

### Request syntax

    svc$list_usage_totals(
      accountIds = list(
        "string"
      ),
      maxResults = 123,
      nextToken = "string"
    )
