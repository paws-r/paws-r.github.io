<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_update_pipeline</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a pipeline

### Description

Updates a pipeline.

### Usage

    sagemaker_update_pipeline(PipelineName, PipelineDisplayName,
      PipelineDefinition, PipelineDefinitionS3Location, PipelineDescription,
      RoleArn, ParallelismConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_update_pipeline_:_PipelineName">PipelineName</code></td>
<td><p>[required] The name of the pipeline to update.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_pipeline_:_PipelineDisplayName">PipelineDisplayName</code></td>
<td><p>The display name of the pipeline.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_update_pipeline_:_PipelineDefinition">PipelineDefinition</code></td>
<td><p>The JSON pipeline definition.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_pipeline_:_PipelineDefinitionS3Location">PipelineDefinitionS3Location</code></td>
<td><p>The location of the pipeline definition stored in Amazon S3. If
specified, SageMaker will retrieve the pipeline definition from this
location.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_update_pipeline_:_PipelineDescription">PipelineDescription</code></td>
<td><p>The description of the pipeline.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_update_pipeline_:_RoleArn">RoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) that the pipeline uses to
execute.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_update_pipeline_:_ParallelismConfiguration">ParallelismConfiguration</code></td>
<td><p>If specified, it applies to all executions of this pipeline by
default.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PipelineArn = "string"
    )

### Request syntax

    svc$update_pipeline(
      PipelineName = "string",
      PipelineDisplayName = "string",
      PipelineDefinition = "string",
      PipelineDefinitionS3Location = list(
        Bucket = "string",
        ObjectKey = "string",
        VersionId = "string"
      ),
      PipelineDescription = "string",
      RoleArn = "string",
      ParallelismConfiguration = list(
        MaxParallelExecutionSteps = 123
      )
    )
