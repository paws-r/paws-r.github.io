<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_search_dashboards</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Searches for dashboards that belong to a user

### Description

Searches for dashboards that belong to a user.

This operation is eventually consistent. The results are best effort and
may not reflect very recent updates and changes.

### Usage

    quicksight_search_dashboards(AwsAccountId, Filters, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_search_dashboards_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the user whose dashboards you're searching for.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_search_dashboards_:_Filters">Filters</code></td>
<td><p>[required] The filters to apply to the search. Currently, you can
search only by user name, for example, <code
style="white-space: pre;">⁠"Filters": [ { "Name": "QUICKSIGHT_USER", "Operator": "StringEquals", "Value": "arn:aws:quicksight:us-east-1:1:user/default/UserName1" } ]⁠</code></p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_search_dashboards_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results, or null if there are no
more results.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_search_dashboards_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to be returned per
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DashboardSummaryList = list(
        list(
          Arn = "string",
          DashboardId = "string",
          Name = "string",
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          LastUpdatedTime = as.POSIXct(
            "2015-01-01"
          ),
          PublishedVersionNumber = 123,
          LastPublishedTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string",
      Status = 123,
      RequestId = "string"
    )

### Request syntax

    svc$search_dashboards(
      AwsAccountId = "string",
      Filters = list(
        list(
          Operator = "StringEquals"|"StringLike",
          Name = "QUICKSIGHT_USER"|"QUICKSIGHT_VIEWER_OR_OWNER"|"DIRECT_QUICKSIGHT_VIEWER_OR_OWNER"|"QUICKSIGHT_OWNER"|"DIRECT_QUICKSIGHT_OWNER"|"DIRECT_QUICKSIGHT_SOLE_OWNER"|"DASHBOARD_NAME",
          Value = "string"
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
