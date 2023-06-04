<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_update_comment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Replaces the contents of a comment

### Description

Replaces the contents of a comment.

### Usage

    codecommit_update_comment(commentId, content)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_update_comment_:_commentId">commentId</code></td>
<td><p>[required] The system-generated ID of the comment you want to
update. To get this ID, use
<code>get_comments_for_compared_commit</code> or
<code>get_comments_for_pull_request</code>.</p></td>
</tr>
<tr class="even">
<td><code id="codecommit_update_comment_:_content">content</code></td>
<td><p>[required] The updated content to replace the existing content of
the comment.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      comment = list(
        commentId = "string",
        content = "string",
        inReplyTo = "string",
        creationDate = as.POSIXct(
          "2015-01-01"
        ),
        lastModifiedDate = as.POSIXct(
          "2015-01-01"
        ),
        authorArn = "string",
        deleted = TRUE|FALSE,
        clientRequestToken = "string",
        callerReactions = list(
          "string"
        ),
        reactionCounts = list(
          123
        )
      )
    )

### Request syntax

    svc$update_comment(
      commentId = "string",
      content = "string"
    )
