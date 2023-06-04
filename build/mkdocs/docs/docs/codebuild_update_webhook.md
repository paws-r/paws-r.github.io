<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codebuild_update_webhook</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the webhook associated with an CodeBuild build project

### Description

Updates the webhook associated with an CodeBuild build project.

If you use Bitbucket for your repository, `rotateSecret` is ignored.

### Usage

    codebuild_update_webhook(projectName, branchFilter, rotateSecret,
      filterGroups, buildType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codebuild_update_webhook_:_projectName">projectName</code></td>
<td><p>[required] The name of the CodeBuild project.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_update_webhook_:_branchFilter">branchFilter</code></td>
<td><p>A regular expression used to determine which repository branches
are built when a webhook is triggered. If the name of a branch matches
the regular expression, then it is built. If <code>branchFilter</code>
is empty, then all branches are built.</p>
<p>It is recommended that you use <code>filterGroups</code> instead of
<code>branchFilter</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_update_webhook_:_rotateSecret">rotateSecret</code></td>
<td><p>A boolean value that specifies whether the associated GitHub
repository's secret token should be updated. If you use Bitbucket for
your repository, <code>rotateSecret</code> is ignored.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_update_webhook_:_filterGroups">filterGroups</code></td>
<td><p>An array of arrays of <code>WebhookFilter</code> objects used to
determine if a webhook event can trigger a build. A filter group must
contain at least one <code>EVENT</code>
<code>WebhookFilter</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_update_webhook_:_buildType">buildType</code></td>
<td><p>Specifies the type of build this webhook will trigger.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      webhook = list(
        url = "string",
        payloadUrl = "string",
        secret = "string",
        branchFilter = "string",
        filterGroups = list(
          list(
            list(
              type = "EVENT"|"BASE_REF"|"HEAD_REF"|"ACTOR_ACCOUNT_ID"|"FILE_PATH"|"COMMIT_MESSAGE",
              pattern = "string",
              excludeMatchedPattern = TRUE|FALSE
            )
          )
        ),
        buildType = "BUILD"|"BUILD_BATCH",
        lastModifiedSecret = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$update_webhook(
      projectName = "string",
      branchFilter = "string",
      rotateSecret = TRUE|FALSE,
      filterGroups = list(
        list(
          list(
            type = "EVENT"|"BASE_REF"|"HEAD_REF"|"ACTOR_ACCOUNT_ID"|"FILE_PATH"|"COMMIT_MESSAGE",
            pattern = "string",
            excludeMatchedPattern = TRUE|FALSE
          )
        )
      ),
      buildType = "BUILD"|"BUILD_BATCH"
    )
