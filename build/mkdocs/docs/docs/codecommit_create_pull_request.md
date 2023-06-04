<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_create_pull_request</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a pull request in the specified repository

### Description

Creates a pull request in the specified repository.

### Usage

    codecommit_create_pull_request(title, description, targets,
      clientRequestToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codecommit_create_pull_request_:_title">title</code></td>
<td><p>[required] The title of the pull request. This title is used to
identify the pull request to other users in the repository.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_create_pull_request_:_description">description</code></td>
<td><p>A description of the pull request.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_create_pull_request_:_targets">targets</code></td>
<td><p>[required] The targets for the pull request, including the source
of the code to be reviewed (the source branch) and the destination where
the creator of the pull request intends the code to be merged after the
pull request is closed (the destination branch).</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_create_pull_request_:_clientRequestToken">clientRequestToken</code></td>
<td><p>A unique, client-generated idempotency token that, when provided
in a request, ensures the request cannot be repeated with a changed
parameter. If a request is received with the same parameters and a token
is included, the request returns information about the initial request
that used that token.</p>
<p>The AWS SDKs prepopulate client request tokens. If you are using an
AWS SDK, an idempotency token is created for you.</p></td>
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

    svc$create_pull_request(
      title = "string",
      description = "string",
      targets = list(
        list(
          repositoryName = "string",
          sourceReference = "string",
          destinationReference = "string"
        )
      ),
      clientRequestToken = "string"
    )
