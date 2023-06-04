<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codegurureviewer_list_recommendations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the list of all recommendations for a completed code review

### Description

Returns the list of all recommendations for a completed code review.

### Usage

    codegurureviewer_list_recommendations(NextToken, MaxResults,
      CodeReviewArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codegurureviewer_list_recommendations_:_NextToken">NextToken</code></td>
<td><p>Pagination token.</p></td>
</tr>
<tr class="even">
<td><code
id="codegurureviewer_list_recommendations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results that are returned per call. The
default is 100.</p></td>
</tr>
<tr class="odd">
<td><code
id="codegurureviewer_list_recommendations_:_CodeReviewArn">CodeReviewArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the <a
href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html">CodeReview</a>
object.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RecommendationSummaries = list(
        list(
          FilePath = "string",
          RecommendationId = "string",
          StartLine = 123,
          EndLine = 123,
          Description = "string",
          RecommendationCategory = "AWSBestPractices"|"AWSCloudFormationIssues"|"DuplicateCode"|"CodeMaintenanceIssues"|"ConcurrencyIssues"|"InputValidations"|"PythonBestPractices"|"JavaBestPractices"|"ResourceLeaks"|"SecurityIssues"|"CodeInconsistencies",
          RuleMetadata = list(
            RuleId = "string",
            RuleName = "string",
            ShortDescription = "string",
            LongDescription = "string",
            RuleTags = list(
              "string"
            )
          ),
          Severity = "Info"|"Low"|"Medium"|"High"|"Critical"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_recommendations(
      NextToken = "string",
      MaxResults = 123,
      CodeReviewArn = "string"
    )
