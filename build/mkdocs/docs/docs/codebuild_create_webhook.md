<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codebuild_create_webhook</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## For an existing CodeBuild build project that has its source code stored in a GitHub or Bitbucket repository, enables CodeBuild to start rebuilding the source code every time a code change is pushed to the repository

### Description

For an existing CodeBuild build project that has its source code stored
in a GitHub or Bitbucket repository, enables CodeBuild to start
rebuilding the source code every time a code change is pushed to the
repository.

If you enable webhooks for an CodeBuild project, and the project is used
as a build step in CodePipeline, then two identical builds are created
for each commit. One build is triggered through webhooks, and one
through CodePipeline. Because billing is on a per-build basis, you are
billed for both builds. Therefore, if you are using CodePipeline, we
recommend that you disable webhooks in CodeBuild. In the CodeBuild
console, clear the Webhook box. For more information, see step 5 in
[Change a Build Project's
Settings](https://docs.aws.amazon.com/codebuild/latest/userguide/change-project.html#change-project-console).

### Usage

    codebuild_create_webhook(projectName, branchFilter, filterGroups,
      buildType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codebuild_create_webhook_:_projectName">projectName</code></td>
<td><p>[required] The name of the CodeBuild project.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_create_webhook_:_branchFilter">branchFilter</code></td>
<td><p>A regular expression used to determine which repository branches
are built when a webhook is triggered. If the name of a branch matches
the regular expression, then it is built. If <code>branchFilter</code>
is empty, then all branches are built.</p>
<p>It is recommended that you use <code>filterGroups</code> instead of
<code>branchFilter</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_create_webhook_:_filterGroups">filterGroups</code></td>
<td><p>An array of arrays of <code>WebhookFilter</code> objects used to
determine which webhooks are triggered. At least one
<code>WebhookFilter</code> in the array must specify <code>EVENT</code>
as its <code>type</code>.</p>
<p>For a build to be triggered, at least one filter group in the
<code>filterGroups</code> array must pass. For a filter group to pass,
each of its filters must pass.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_create_webhook_:_buildType">buildType</code></td>
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

    svc$create_webhook(
      projectName = "string",
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
      buildType = "BUILD"|"BUILD_BATCH"
    )
