<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_post_comment_reply</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Posts a comment in reply to an existing comment on a comparison between commits or a pull request

### Description

Posts a comment in reply to an existing comment on a comparison between
commits or a pull request.

### Usage

    codecommit_post_comment_reply(inReplyTo, clientRequestToken, content)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_post_comment_reply_:_inReplyTo">inReplyTo</code></td>
<td><p>[required] The system-generated ID of the comment to which you
want to reply. To get this ID, use
<code>get_comments_for_compared_commit</code> or
<code>get_comments_for_pull_request</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_post_comment_reply_:_clientRequestToken">clientRequestToken</code></td>
<td><p>A unique, client-generated idempotency token that, when provided
in a request, ensures the request cannot be repeated with a changed
parameter. If a request is received with the same parameters and a token
is included, the request returns information about the initial request
that used that token.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_post_comment_reply_:_content">content</code></td>
<td><p>[required] The contents of your reply to a comment.</p></td>
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

    svc$post_comment_reply(
      inReplyTo = "string",
      clientRequestToken = "string",
      content = "string"
    )
