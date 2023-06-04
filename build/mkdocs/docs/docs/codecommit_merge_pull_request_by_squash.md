<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_merge_pull_request_by_squash</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attempts to merge the source commit of a pull request into the specified destination branch for that pull request at the specified commit using the squash merge strategy

### Description

Attempts to merge the source commit of a pull request into the specified
destination branch for that pull request at the specified commit using
the squash merge strategy. If the merge is successful, it closes the
pull request.

### Usage

    codecommit_merge_pull_request_by_squash(pullRequestId, repositoryName,
      sourceCommitId, conflictDetailLevel, conflictResolutionStrategy,
      commitMessage, authorName, email, keepEmptyFolders, conflictResolution)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_merge_pull_request_by_squash_:_pullRequestId">pullRequestId</code></td>
<td><p>[required] The system-generated ID of the pull request. To get
this ID, use <code>list_pull_requests</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_merge_pull_request_by_squash_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository where the pull request was
created.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_merge_pull_request_by_squash_:_sourceCommitId">sourceCommitId</code></td>
<td><p>The full commit ID of the original or updated commit in the pull
request source branch. Pass this value if you want an exception thrown
if the current commit ID of the tip of the source branch does not match
this commit ID.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_merge_pull_request_by_squash_:_conflictDetailLevel">conflictDetailLevel</code></td>
<td><p>The level of conflict detail to use. If unspecified, the default
FILE_LEVEL is used, which returns a not-mergeable result if the same
file has differences in both branches. If LINE_LEVEL is specified, a
conflict is considered not mergeable if the same file in both branches
has differences on the same line.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_merge_pull_request_by_squash_:_conflictResolutionStrategy">conflictResolutionStrategy</code></td>
<td><p>Specifies which branch to use when resolving conflicts, or
whether to attempt automatically merging two versions of a file. The
default is NONE, which requires any conflicts to be resolved manually
before the merge operation is successful.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_merge_pull_request_by_squash_:_commitMessage">commitMessage</code></td>
<td><p>The commit message to include in the commit information for the
merge.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_merge_pull_request_by_squash_:_authorName">authorName</code></td>
<td><p>The name of the author who created the commit. This information
is used as both the author and committer for the commit.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_merge_pull_request_by_squash_:_email">email</code></td>
<td><p>The email address of the person merging the branches. This
information is used in the commit information for the merge.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_merge_pull_request_by_squash_:_keepEmptyFolders">keepEmptyFolders</code></td>
<td><p>If the commit contains deletions, whether to keep a folder or
folder structure if the changes leave the folders empty. If true, a
.gitkeep file is created for empty folders. The default is
false.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_merge_pull_request_by_squash_:_conflictResolution">conflictResolution</code></td>
<td><p>If AUTOMERGE is the conflict resolution strategy, a list of
inputs to use when resolving conflicts during a merge.</p></td>
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

    svc$merge_pull_request_by_squash(
      pullRequestId = "string",
      repositoryName = "string",
      sourceCommitId = "string",
      conflictDetailLevel = "FILE_LEVEL"|"LINE_LEVEL",
      conflictResolutionStrategy = "NONE"|"ACCEPT_SOURCE"|"ACCEPT_DESTINATION"|"AUTOMERGE",
      commitMessage = "string",
      authorName = "string",
      email = "string",
      keepEmptyFolders = TRUE|FALSE,
      conflictResolution = list(
        replaceContents = list(
          list(
            filePath = "string",
            replacementType = "KEEP_BASE"|"KEEP_SOURCE"|"KEEP_DESTINATION"|"USE_NEW_CONTENT",
            content = raw,
            fileMode = "EXECUTABLE"|"NORMAL"|"SYMLINK"
          )
        ),
        deleteFiles = list(
          list(
            filePath = "string"
          )
        ),
        setFileModes = list(
          list(
            filePath = "string",
            fileMode = "EXECUTABLE"|"NORMAL"|"SYMLINK"
          )
        )
      )
    )
