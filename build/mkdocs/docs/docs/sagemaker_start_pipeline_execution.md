<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_start_pipeline_execution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a pipeline execution

### Description

Starts a pipeline execution.

### Usage

    sagemaker_start_pipeline_execution(PipelineName,
      PipelineExecutionDisplayName, PipelineParameters,
      PipelineExecutionDescription, ClientRequestToken,
      ParallelismConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_start_pipeline_execution_:_PipelineName">PipelineName</code></td>
<td><p>[required] The name of the pipeline.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_start_pipeline_execution_:_PipelineExecutionDisplayName">PipelineExecutionDisplayName</code></td>
<td><p>The display name of the pipeline execution.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_start_pipeline_execution_:_PipelineParameters">PipelineParameters</code></td>
<td><p>Contains a list of pipeline parameters. This list can be
empty.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_start_pipeline_execution_:_PipelineExecutionDescription">PipelineExecutionDescription</code></td>
<td><p>The description of the pipeline execution.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_start_pipeline_execution_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>[required] A unique, case-sensitive identifier that you provide
to ensure the idempotency of the operation. An idempotent operation
completes no more than once.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_start_pipeline_execution_:_ParallelismConfiguration">ParallelismConfiguration</code></td>
<td><p>This configuration, if specified, overrides the parallelism
configuration of the parent pipeline for this specific run.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PipelineExecutionArn = "string"
    )

### Request syntax

    svc$start_pipeline_execution(
      PipelineName = "string",
      PipelineExecutionDisplayName = "string",
      PipelineParameters = list(
        list(
          Name = "string",
          Value = "string"
        )
      ),
      PipelineExecutionDescription = "string",
      ClientRequestToken = "string",
      ParallelismConfiguration = list(
        MaxParallelExecutionSteps = 123
      )
    )
