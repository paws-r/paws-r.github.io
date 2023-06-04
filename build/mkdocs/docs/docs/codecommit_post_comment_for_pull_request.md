<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_post_comment_for_pull_request</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Posts a comment on a pull request

### Description

Posts a comment on a pull request.

### Usage

    codecommit_post_comment_for_pull_request(pullRequestId, repositoryName,
      beforeCommitId, afterCommitId, location, content, clientRequestToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_post_comment_for_pull_request_:_pullRequestId">pullRequestId</code></td>
<td><p>[required] The system-generated ID of the pull request. To get
this ID, use <code>list_pull_requests</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_post_comment_for_pull_request_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository where you want to post a
comment on a pull request.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_post_comment_for_pull_request_:_beforeCommitId">beforeCommitId</code></td>
<td><p>[required] The full commit ID of the commit in the destination
branch that was the tip of the branch at the time the pull request was
created.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_post_comment_for_pull_request_:_afterCommitId">afterCommitId</code></td>
<td><p>[required] The full commit ID of the commit in the source branch
that is the current tip of the branch for the pull request when you post
the comment.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_post_comment_for_pull_request_:_location">location</code></td>
<td><p>The location of the change where you want to post your comment.
If no location is provided, the comment is posted as a general comment
on the pull request difference between the before commit ID and the
after commit ID.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_post_comment_for_pull_request_:_content">content</code></td>
<td><p>[required] The content of your comment on the change.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_post_comment_for_pull_request_:_clientRequestToken">clientRequestToken</code></td>
<td><p>A unique, client-generated idempotency token that, when provided
in a request, ensures the request cannot be repeated with a changed
parameter. If a request is received with the same parameters and a token
is included, the request returns information about the initial request
that used that token.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      repositoryName = "string",
      pullRequestId = "string",
      beforeCommitId = "string",
      afterCommitId = "string",
      beforeBlobId = "string",
      afterBlobId = "string",
      location = list(
        filePath = "string",
        filePosition = 123,
        relativeFileVersion = "BEFORE"|"AFTER"
      ),
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

    svc$post_comment_for_pull_request(
      pullRequestId = "string",
      repositoryName = "string",
      beforeCommitId = "string",
      afterCommitId = "string",
      location = list(
        filePath = "string",
        filePosition = 123,
        relativeFileVersion = "BEFORE"|"AFTER"
      ),
      content = "string",
      clientRequestToken = "string"
    )
