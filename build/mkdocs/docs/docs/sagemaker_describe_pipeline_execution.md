<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_pipeline_execution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the details of a pipeline execution

### Description

Describes the details of a pipeline execution.

### Usage

    sagemaker_describe_pipeline_execution(PipelineExecutionArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_pipeline_execution_:_PipelineExecutionArn">PipelineExecutionArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the pipeline
execution.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PipelineArn = "string",
      PipelineExecutionArn = "string",
      PipelineExecutionDisplayName = "string",
      PipelineExecutionStatus = "Executing"|"Stopping"|"Stopped"|"Failed"|"Succeeded",
      PipelineExecutionDescription = "string",
      PipelineExperimentConfig = list(
        ExperimentName = "string",
        TrialName = "string"
      ),
      FailureReason = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTime = as.POSIXct(
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

    svc$describe_pipeline_execution(
      PipelineExecutionArn = "string"
    )
