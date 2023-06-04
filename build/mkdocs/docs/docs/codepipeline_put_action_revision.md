<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codepipeline_put_action_revision</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides information to CodePipeline about new revisions to a source

### Description

Provides information to CodePipeline about new revisions to a source.

### Usage

    codepipeline_put_action_revision(pipelineName, stageName, actionName,
      actionRevision)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codepipeline_put_action_revision_:_pipelineName">pipelineName</code></td>
<td><p>[required] The name of the pipeline that starts processing the
revision to the source.</p></td>
</tr>
<tr class="even">
<td><code
id="codepipeline_put_action_revision_:_stageName">stageName</code></td>
<td><p>[required] The name of the stage that contains the action that
acts on the revision.</p></td>
</tr>
<tr class="odd">
<td><code
id="codepipeline_put_action_revision_:_actionName">actionName</code></td>
<td><p>[required] The name of the action that processes the
revision.</p></td>
</tr>
<tr class="even">
<td><code
id="codepipeline_put_action_revision_:_actionRevision">actionRevision</code></td>
<td><p>[required] Represents information about the version (or revision)
of an action.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      newRevision = TRUE|FALSE,
      pipelineExecutionId = "string"
    )

### Request syntax

    svc$put_action_revision(
      pipelineName = "string",
      stageName = "string",
      actionName = "string",
      actionRevision = list(
        revisionId = "string",
        revisionChangeId = "string",
        created = as.POSIXct(
          "2015-01-01"
        )
      )
    )
