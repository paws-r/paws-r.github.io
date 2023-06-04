<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_list_analyses</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists Amazon QuickSight analyses that exist in the specified Amazon Web Services account

### Description

Lists Amazon QuickSight analyses that exist in the specified Amazon Web
Services account.

### Usage

    quicksight_list_analyses(AwsAccountId, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_list_analyses_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the analyses.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_list_analyses_:_NextToken">NextToken</code></td>
<td><p>A pagination token that can be used in a subsequent
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_list_analyses_:_MaxResults">MaxResults</code></td>
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

    svc$list_analyses(
      AwsAccountId = "string",
      NextToken = "string",
      MaxResults = 123
    )
