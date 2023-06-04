<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_get_comments_for_pull_request</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns comments made on a pull request

### Description

Returns comments made on a pull request.

Reaction counts might include numbers from user identities who were
deleted after the reaction was made. For a count of reactions from
active identities, use GetCommentReactions.

### Usage

    codecommit_get_comments_for_pull_request(pullRequestId, repositoryName,
      beforeCommitId, afterCommitId, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_get_comments_for_pull_request_:_pullRequestId">pullRequestId</code></td>
<td><p>[required] The system-generated ID of the pull request. To get
this ID, use <code>list_pull_requests</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_get_comments_for_pull_request_:_repositoryName">repositoryName</code></td>
<td><p>The name of the repository that contains the pull
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_get_comments_for_pull_request_:_beforeCommitId">beforeCommitId</code></td>
<td><p>The full commit ID of the commit in the destination branch that
was the tip of the branch at the time the pull request was
created.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_get_comments_for_pull_request_:_afterCommitId">afterCommitId</code></td>
<td><p>The full commit ID of the commit in the source branch that was
the tip of the branch at the time the comment was made.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_get_comments_for_pull_request_:_nextToken">nextToken</code></td>
<td><p>An enumeration token that, when provided in a request, returns
the next batch of the results.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_get_comments_for_pull_request_:_maxResults">maxResults</code></td>
<td><p>A non-zero, non-negative integer used to limit the number of
returned results. The default is 100 comments. You can return up to 500
comments with a single request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      commentsForPullRequestData = list(
        list(
          pullRequestId = "string",
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
          comments = list(
            list(
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
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$get_comments_for_pull_request(
      pullRequestId = "string",
      repositoryName = "string",
      beforeCommitId = "string",
      afterCommitId = "string",
      nextToken = "string",
      maxResults = 123
    )
