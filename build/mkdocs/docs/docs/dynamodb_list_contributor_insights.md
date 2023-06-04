<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_list_contributor_insights</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of ContributorInsightsSummary for a table and all its global secondary indexes

### Description

Returns a list of ContributorInsightsSummary for a table and all its
global secondary indexes.

### Usage

    dynamodb_list_contributor_insights(TableName, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dynamodb_list_contributor_insights_:_TableName">TableName</code></td>
<td><p>The name of the table.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_list_contributor_insights_:_NextToken">NextToken</code></td>
<td><p>A token to for the desired page, if there is one.</p></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_list_contributor_insights_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of results to return per page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ContributorInsightsSummaries = list(
        list(
          TableName = "string",
          IndexName = "string",
          ContributorInsightsStatus = "ENABLING"|"ENABLED"|"DISABLING"|"DISABLED"|"FAILED"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_contributor_insights(
      TableName = "string",
      NextToken = "string",
      MaxResults = 123
    )
