<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codebuild_delete_webhook</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## For an existing CodeBuild build project that has its source code stored in a GitHub or Bitbucket repository, stops CodeBuild from rebuilding the source code every time a code change is pushed to the repository

### Description

For an existing CodeBuild build project that has its source code stored
in a GitHub or Bitbucket repository, stops CodeBuild from rebuilding the
source code every time a code change is pushed to the repository.

### Usage

    codebuild_delete_webhook(projectName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codebuild_delete_webhook_:_projectName">projectName</code></td>
<td><p>[required] The name of the CodeBuild project.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_webhook(
      projectName = "string"
    )
