<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_search_analyses</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Searches for analyses that belong to the user specified in the filter

### Description

Searches for analyses that belong to the user specified in the filter.

This operation is eventually consistent. The results are best effort and
may not reflect very recent updates and changes.

### Usage

    quicksight_search_analyses(AwsAccountId, Filters, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_search_analyses_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the analyses that you're searching for.</p></td>
</tr>
<tr class="even">
<td><code id="quicksight_search_analyses_:_Filters">Filters</code></td>
<td><p>[required] The structure for the search filters that you want to
apply to your search.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_search_analyses_:_NextToken">NextToken</code></td>
<td><p>A pagination token that can be used in a subsequent
request.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_search_analyses_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AnalysisSummaryList = list(
        list(
          Arn = "string",
          AnalysisId = "string",
          Name = "string",
          Status = "CREATION_IN_PROGRESS"|"CREATION_SUCCESSFUL"|"CREATION_FAILED"|"UPDATE_IN_PROGRESS"|"UPDATE_SUCCESSFUL"|"UPDATE_FAILED"|"DELETED",
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          LastUpdatedTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string",
      Status = 123,
      RequestId = "string"
    )

### Request syntax

    svc$search_analyses(
      AwsAccountId = "string",
      Filters = list(
        list(
          Operator = "StringEquals"|"StringLike",
          Name = "QUICKSIGHT_USER"|"QUICKSIGHT_VIEWER_OR_OWNER"|"DIRECT_QUICKSIGHT_VIEWER_OR_OWNER"|"QUICKSIGHT_OWNER"|"DIRECT_QUICKSIGHT_OWNER"|"DIRECT_QUICKSIGHT_SOLE_OWNER"|"ANALYSIS_NAME",
          Value = "string"
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
