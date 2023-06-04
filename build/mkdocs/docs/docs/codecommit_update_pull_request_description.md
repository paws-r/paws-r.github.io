<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_update_pull_request_description</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Replaces the contents of the description of a pull request

### Description

Replaces the contents of the description of a pull request.

### Usage

    codecommit_update_pull_request_description(pullRequestId, description)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_update_pull_request_description_:_pullRequestId">pullRequestId</code></td>
<td><p>[required] The system-generated ID of the pull request. To get
this ID, use <code>list_pull_requests</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_update_pull_request_description_:_description">description</code></td>
<td><p>[required] The updated content of the description for the pull
request. This content replaces the existing description.</p></td>
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

    svc$update_pull_request_description(
      pullRequestId = "string",
      description = "string"
    )
