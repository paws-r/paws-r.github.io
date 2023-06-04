<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_merge_pull_request_by_fast_forward</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attempts to merge the source commit of a pull request into the specified destination branch for that pull request at the specified commit using the fast-forward merge strategy

### Description

Attempts to merge the source commit of a pull request into the specified
destination branch for that pull request at the specified commit using
the fast-forward merge strategy. If the merge is successful, it closes
the pull request.

### Usage

    codecommit_merge_pull_request_by_fast_forward(pullRequestId,
      repositoryName, sourceCommitId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_merge_pull_request_by_fast_forward_:_pullRequestId">pullRequestId</code></td>
<td><p>[required] The system-generated ID of the pull request. To get
this ID, use <code>list_pull_requests</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_merge_pull_request_by_fast_forward_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository where the pull request was
created.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_merge_pull_request_by_fast_forward_:_sourceCommitId">sourceCommitId</code></td>
<td><p>The full commit ID of the original or updated commit in the pull
request source branch. Pass this value if you want an exception thrown
if the current commit ID of the tip of the source branch does not match
this commit ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      pullRequest = list(
        pullRequestId = "string",
        title = "string",
        description = "string",
        lastActivityDate = as.POSIXct(
          "2015-01-01"
        ),
        creationDate = as.POSIXct(
          "2015-01-01"
        ),
        pullRequestStatus = "OPEN"|"CLOSED",
        authorArn = "string",
        pullRequestTargets = list(
          list(
            repositoryName = "string",
            sourceReference = "string",
            destinationReference = "string",
            destinationCommit = "string",
            sourceCommit = "string",
            mergeBase = "string",
            mergeMetadata = list(
              isMerged = TRUE|FALSE,
              mergedBy = "string",
              mergeCommitId = "string",
              mergeOption = "FAST_FORWARD_MERGE"|"SQUASH_MERGE"|"THREE_WAY_MERGE"
            )
          )
        ),
        clientRequestToken = "string",
        revisionId = "string",
        approvalRules = list(
          list(
            approvalRuleId = "string",
            approvalRuleName = "string",
            approvalRuleContent = "string",
            ruleContentSha256 = "string",
            lastModifiedDate = as.POSIXct(
              "2015-01-01"
            ),
            creationDate = as.POSIXct(
              "2015-01-01"
            ),
            lastModifiedUser = "string",
            originApprovalRuleTemplate = list(
              approvalRuleTemplateId = "string",
              approvalRuleTemplateName = "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$merge_pull_request_by_fast_forward(
      pullRequestId = "string",
      repositoryName = "string",
      sourceCommitId = "string"
    )
