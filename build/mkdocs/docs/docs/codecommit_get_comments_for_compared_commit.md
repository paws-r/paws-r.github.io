<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_get_comments_for_compared_commit</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about comments made on the comparison between two commits

### Description

Returns information about comments made on the comparison between two
commits.

Reaction counts might include numbers from user identities who were
deleted after the reaction was made. For a count of reactions from
active identities, use GetCommentReactions.

### Usage

    codecommit_get_comments_for_compared_commit(repositoryName,
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
id="codecommit_get_comments_for_compared_commit_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository where you want to compare
commits.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_get_comments_for_compared_commit_:_beforeCommitId">beforeCommitId</code></td>
<td><p>To establish the directionality of the comparison, the full
commit ID of the before commit.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_get_comments_for_compared_commit_:_afterCommitId">afterCommitId</code></td>
<td><p>[required] To establish the directionality of the comparison, the
full commit ID of the after commit.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_get_comments_for_compared_commit_:_nextToken">nextToken</code></td>
<td><p>An enumeration token that when provided in a request, returns the
next batch of the results.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_get_comments_for_compared_commit_:_maxResults">maxResults</code></td>
<td><p>A non-zero, non-negative integer used to limit the number of
returned results. The default is 100 comments, but you can configure up
to 500.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      commentsForComparedCommitData = list(
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

    svc$get_comments_for_compared_commit(
      repositoryName = "string",
      beforeCommitId = "string",
      afterCommitId = "string",
      nextToken = "string",
      maxResults = 123
    )
