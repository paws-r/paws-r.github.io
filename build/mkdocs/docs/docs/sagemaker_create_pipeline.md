<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_pipeline</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a pipeline using a JSON pipeline definition

### Description

Creates a pipeline using a JSON pipeline definition.

### Usage

    sagemaker_create_pipeline(PipelineName, PipelineDisplayName,
      PipelineDefinition, PipelineDefinitionS3Location, PipelineDescription,
      ClientRequestToken, RoleArn, Tags, ParallelismConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_create_pipeline_:_PipelineName">PipelineName</code></td>
<td><p>[required] The name of the pipeline.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_pipeline_:_PipelineDisplayName">PipelineDisplayName</code></td>
<td><p>The display name of the pipeline.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_pipeline_:_PipelineDefinition">PipelineDefinition</code></td>
<td><p>The JSON pipeline definition of the pipeline.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_pipeline_:_PipelineDefinitionS3Location">PipelineDefinitionS3Location</code></td>
<td><p>The location of the pipeline definition stored in Amazon S3. If
specified, SageMaker will retrieve the pipeline definition from this
location.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_pipeline_:_PipelineDescription">PipelineDescription</code></td>
<td><p>A description of the pipeline.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_pipeline_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>[required] A unique, case-sensitive identifier that you provide
to ensure the idempotency of the operation. An idempotent operation
completes no more than one time.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_create_pipeline_:_RoleArn">RoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the role used by the
pipeline to access and create resources.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_create_pipeline_:_Tags">Tags</code></td>
<td><p>A list of tags to apply to the created pipeline.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_pipeline_:_ParallelismConfiguration">ParallelismConfiguration</code></td>
<td><p>This is the configuration that controls the parallelism of the
pipeline. If specified, it applies to all runs of this pipeline by
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

    svc$create_pipeline(
      PipelineName = "string",
      PipelineDisplayName = "string",
      PipelineDefinition = "string",
      PipelineDefinitionS3Location = list(
        Bucket = "string",
        ObjectKey = "string",
        VersionId = "string"
      ),
      PipelineDescription = "string",
      ClientRequestToken = "string",
      RoleArn = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      ParallelismConfiguration = list(
        MaxParallelExecutionSteps = 123
      )
    )
