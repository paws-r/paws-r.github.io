<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codepipeline_put_approval_result</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides the response to a manual approval request to CodePipeline

### Description

Provides the response to a manual approval request to CodePipeline.
Valid responses include Approved and Rejected.

### Usage

    codepipeline_put_approval_result(pipelineName, stageName, actionName,
      result, token)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codepipeline_put_approval_result_:_pipelineName">pipelineName</code></td>
<td><p>[required] The name of the pipeline that contains the
action.</p></td>
</tr>
<tr class="even">
<td><code
id="codepipeline_put_approval_result_:_stageName">stageName</code></td>
<td><p>[required] The name of the stage that contains the
action.</p></td>
</tr>
<tr class="odd">
<td><code
id="codepipeline_put_approval_result_:_actionName">actionName</code></td>
<td><p>[required] The name of the action for which approval is
requested.</p></td>
</tr>
<tr class="even">
<td><code
id="codepipeline_put_approval_result_:_result">result</code></td>
<td><p>[required] Represents information about the result of the
approval request.</p></td>
</tr>
<tr class="odd">
<td><code
id="codepipeline_put_approval_result_:_token">token</code></td>
<td><p>[required] The system-generated token used to identify a unique
approval request. The token for each open approval request can be
obtained using the <code>get_pipeline_state</code> action. It is used to
validate that the approval request corresponding to this token is still
valid.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      approvedAt = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$put_approval_result(
      pipelineName = "string",
      stageName = "string",
      actionName = "string",
      result = list(
        summary = "string",
        status = "Approved"|"Rejected"
      ),
      token = "string"
    )
