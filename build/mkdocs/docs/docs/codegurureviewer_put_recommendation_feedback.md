<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codegurureviewer_put_recommendation_feedback</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stores customer feedback for a CodeGuru Reviewer recommendation

### Description

Stores customer feedback for a CodeGuru Reviewer recommendation. When
this API is called again with different reactions the previous feedback
is overwritten.

### Usage

    codegurureviewer_put_recommendation_feedback(CodeReviewArn,
      RecommendationId, Reactions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codegurureviewer_put_recommendation_feedback_:_CodeReviewArn">CodeReviewArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the <a
href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html">CodeReview</a>
object.</p></td>
</tr>
<tr class="even">
<td><code
id="codegurureviewer_put_recommendation_feedback_:_RecommendationId">RecommendationId</code></td>
<td><p>[required] The recommendation ID that can be used to track the
provided recommendations and then to collect the feedback.</p></td>
</tr>
<tr class="odd">
<td><code
id="codegurureviewer_put_recommendation_feedback_:_Reactions">Reactions</code></td>
<td><p>[required] List for storing reactions. Reactions are utf-8 text
code for emojis. If you send an empty list it clears all your
feedback.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_recommendation_feedback(
      CodeReviewArn = "string",
      RecommendationId = "string",
      Reactions = list(
        "ThumbsUp"|"ThumbsDown"
      )
    )
