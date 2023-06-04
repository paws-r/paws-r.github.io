<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_update_pipeline_execution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a pipeline execution

### Description

Updates a pipeline execution.

### Usage

    sagemaker_update_pipeline_execution(PipelineExecutionArn,
      PipelineExecutionDescription, PipelineExecutionDisplayName,
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
id="sagemaker_update_pipeline_execution_:_PipelineExecutionArn">PipelineExecutionArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the pipeline
execution.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_pipeline_execution_:_PipelineExecutionDescription">PipelineExecutionDescription</code></td>
<td><p>The description of the pipeline execution.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_update_pipeline_execution_:_PipelineExecutionDisplayName">PipelineExecutionDisplayName</code></td>
<td><p>The display name of the pipeline execution.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_pipeline_execution_:_ParallelismConfiguration">ParallelismConfiguration</code></td>
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

    svc$update_pipeline_execution(
      PipelineExecutionArn = "string",
      PipelineExecutionDescription = "string",
      PipelineExecutionDisplayName = "string",
      ParallelismConfiguration = list(
        MaxParallelExecutionSteps = 123
      )
    )
