<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_pipeline</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the details of a pipeline

### Description

Describes the details of a pipeline.

### Usage

    sagemaker_describe_pipeline(PipelineName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_pipeline_:_PipelineName">PipelineName</code></td>
<td><p>[required] The name of the pipeline to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PipelineArn = "string",
      PipelineName = "string",
      PipelineDisplayName = "string",
      PipelineDefinition = "string",
      PipelineDescription = "string",
      RoleArn = "string",
      PipelineStatus = "Active",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTime = as.POSIXct(
        "2015-01-01"
      ),
      LastRunTime = as.POSIXct(
        "2015-01-01"
      ),
      CreatedBy = list(
        UserProfileArn = "string",
        UserProfileName = "string",
        DomainId = "string",
        IamIdentity = list(
          Arn = "string",
          PrincipalId = "string",
          SourceIdentity = "string"
        )
      ),
      LastModifiedBy = list(
        UserProfileArn = "string",
        UserProfileName = "string",
        DomainId = "string",
        IamIdentity = list(
          Arn = "string",
          PrincipalId = "string",
          SourceIdentity = "string"
        )
      ),
      ParallelismConfiguration = list(
        MaxParallelExecutionSteps = 123
      )
    )

### Request syntax

    svc$describe_pipeline(
      PipelineName = "string"
    )
