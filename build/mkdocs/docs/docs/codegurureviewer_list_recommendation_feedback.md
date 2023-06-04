<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codegurureviewer_list_recommendation_feedback</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of RecommendationFeedbackSummary objects that contain customer recommendation feedback for all CodeGuru Reviewer users

### Description

Returns a list of
[RecommendationFeedbackSummary](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RecommendationFeedbackSummary.html)
objects that contain customer recommendation feedback for all CodeGuru
Reviewer users.

### Usage

    codegurureviewer_list_recommendation_feedback(NextToken, MaxResults,
      CodeReviewArn, UserIds, RecommendationIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codegurureviewer_list_recommendation_feedback_:_NextToken">NextToken</code></td>
<td><p>If <code>nextToken</code> is returned, there are more results
available. The value of <code>nextToken</code> is a unique pagination
token for each page. Make the call again using the returned token to
retrieve the next page. Keep all other arguments unchanged.</p></td>
</tr>
<tr class="even">
<td><code
id="codegurureviewer_list_recommendation_feedback_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results that are returned per call. The
default is 100.</p></td>
</tr>
<tr class="odd">
<td><code
id="codegurureviewer_list_recommendation_feedback_:_CodeReviewArn">CodeReviewArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the <a
href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html">CodeReview</a>
object.</p></td>
</tr>
<tr class="even">
<td><code
id="codegurureviewer_list_recommendation_feedback_:_UserIds">UserIds</code></td>
<td><p>An Amazon Web Services user's account ID or Amazon Resource Name
(ARN). Use this ID to query the recommendation feedback for a code
review from that user.</p>
<p>The <code>UserId</code> is an IAM principal that can be specified as
an Amazon Web Services account ID or an Amazon Resource Name (ARN). For
more information, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#Principal_specifying">Specifying
a Principal</a> in the <em>Amazon Web Services Identity and Access
Management User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="codegurureviewer_list_recommendation_feedback_:_RecommendationIds">RecommendationIds</code></td>
<td><p>Used to query the recommendation feedback for a given
recommendation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RecommendationFeedbackSummaries = list(
        list(
          RecommendationId = "string",
          Reactions = list(
            "ThumbsUp"|"ThumbsDown"
          ),
          UserId = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_recommendation_feedback(
      NextToken = "string",
      MaxResults = 123,
      CodeReviewArn = "string",
      UserIds = list(
        "string"
      ),
      RecommendationIds = list(
        "string"
      )
    )
