<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_delete_pipeline</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a pipeline if there are no running instances of the pipeline

### Description

Deletes a pipeline if there are no running instances of the pipeline. To
delete a pipeline, you must stop all running instances of the pipeline
using the `stop_pipeline_execution` API. When you delete a pipeline, all
instances of the pipeline are deleted.

### Usage

    sagemaker_delete_pipeline(PipelineName, ClientRequestToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_delete_pipeline_:_PipelineName">PipelineName</code></td>
<td><p>[required] The name of the pipeline to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_delete_pipeline_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>[required] A unique, case-sensitive identifier that you provide
to ensure the idempotency of the operation. An idempotent operation
completes no more than one time.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PipelineArn = "string"
    )

### Request syntax

    svc$delete_pipeline(
      PipelineName = "string",
      ClientRequestToken = "string"
    )
