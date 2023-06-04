<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_post_comment_for_compared_commit</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Posts a comment on the comparison between two commits

### Description

Posts a comment on the comparison between two commits.

### Usage

    codecommit_post_comment_for_compared_commit(repositoryName,
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
id="codecommit_post_comment_for_compared_commit_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository where you want to post a
comment on the comparison between commits.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_post_comment_for_compared_commit_:_beforeCommitId">beforeCommitId</code></td>
<td><p>To establish the directionality of the comparison, the full
commit ID of the before commit. Required for commenting on any commit
unless that commit is the initial commit.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_post_comment_for_compared_commit_:_afterCommitId">afterCommitId</code></td>
<td><p>[required] To establish the directionality of the comparison, the
full commit ID of the after commit.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_post_comment_for_compared_commit_:_location">location</code></td>
<td><p>The location of the comparison where you want to
comment.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_post_comment_for_compared_commit_:_content">content</code></td>
<td><p>[required] The content of the comment you want to make.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_post_comment_for_compared_commit_:_clientRequestToken">clientRequestToken</code></td>
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

    svc$post_comment_for_compared_commit(
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
