<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmincidents_list_response_plans</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all response plans in your account

### Description

Lists all response plans in your account.

### Usage

    ssmincidents_list_response_plans(maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmincidents_list_response_plans_:_maxResults">maxResults</code></td>
<td><p>The maximum number of response plans per page.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmincidents_list_response_plans_:_nextToken">nextToken</code></td>
<td><p>The pagination token to continue to the next page of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      responsePlanSummaries = list(
        list(
          arn = "string",
          displayName = "string",
          name = "string"
        )
      )
    )

### Request syntax

    svc$list_response_plans(
      maxResults = 123,
      nextToken = "string"
    )
