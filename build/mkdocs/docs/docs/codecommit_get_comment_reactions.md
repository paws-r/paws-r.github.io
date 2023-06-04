<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_get_comment_reactions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about reactions to a specified comment ID

### Description

Returns information about reactions to a specified comment ID. Reactions
from users who have been deleted will not be included in the count.

### Usage

    codecommit_get_comment_reactions(commentId, reactionUserArn, nextToken,
      maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_get_comment_reactions_:_commentId">commentId</code></td>
<td><p>[required] The ID of the comment for which you want to get
reactions information.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_get_comment_reactions_:_reactionUserArn">reactionUserArn</code></td>
<td><p>Optional. The Amazon Resource Name (ARN) of the user or identity
for which you want to get reaction information.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_get_comment_reactions_:_nextToken">nextToken</code></td>
<td><p>An enumeration token that, when provided in a request, returns
the next batch of the results.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_get_comment_reactions_:_maxResults">maxResults</code></td>
<td><p>A non-zero, non-negative integer used to limit the number of
returned results. The default is the same as the allowed maximum,
1,000.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      reactionsForComment = list(
        list(
          reaction = list(
            emoji = "string",
            shortCode = "string",
            unicode = "string"
          ),
          reactionUsers = list(
            "string"
          ),
          reactionsFromDeletedUsersCount = 123
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$get_comment_reactions(
      commentId = "string",
      reactionUserArn = "string",
      nextToken = "string",
      maxResults = 123
    )
