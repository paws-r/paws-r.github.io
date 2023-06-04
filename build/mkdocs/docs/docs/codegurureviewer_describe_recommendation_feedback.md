<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codegurureviewer_describe_recommendation_feedback</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the customer feedback for a CodeGuru Reviewer recommendation

### Description

Describes the customer feedback for a CodeGuru Reviewer recommendation.

### Usage

    codegurureviewer_describe_recommendation_feedback(CodeReviewArn,
      RecommendationId, UserId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codegurureviewer_describe_recommendation_feedback_:_CodeReviewArn">CodeReviewArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the <a
href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html">CodeReview</a>
object.</p></td>
</tr>
<tr class="even">
<td><code
id="codegurureviewer_describe_recommendation_feedback_:_RecommendationId">RecommendationId</code></td>
<td><p>[required] The recommendation ID that can be used to track the
provided recommendations and then to collect the feedback.</p></td>
</tr>
<tr class="odd">
<td><code
id="codegurureviewer_describe_recommendation_feedback_:_UserId">UserId</code></td>
<td><p>Optional parameter to describe the feedback for a given user. If
this is not supplied, it defaults to the user making the request.</p>
<p>The <code>UserId</code> is an IAM principal that can be specified as
an Amazon Web Services account ID or an Amazon Resource Name (ARN). For
more information, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#Principal_specifying">Specifying
a Principal</a> in the <em>Amazon Web Services Identity and Access
Management User Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RecommendationFeedback = list(
        CodeReviewArn = "string",
        RecommendationId = "string",
        Reactions = list(
          "ThumbsUp"|"ThumbsDown"
        ),
        UserId = "string",
        CreatedTimeStamp = as.POSIXct(
          "2015-01-01"
        ),
        LastUpdatedTimeStamp = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$describe_recommendation_feedback(
      CodeReviewArn = "string",
      RecommendationId = "string",
      UserId = "string"
    )
