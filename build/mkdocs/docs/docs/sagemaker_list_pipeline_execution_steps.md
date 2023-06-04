<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_pipeline_execution_steps</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of PipeLineExecutionStep objects

### Description

Gets a list of `PipeLineExecutionStep` objects.

### Usage

    sagemaker_list_pipeline_execution_steps(PipelineExecutionArn, NextToken,
      MaxResults, SortOrder)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_pipeline_execution_steps_:_PipelineExecutionArn">PipelineExecutionArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the pipeline
execution.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_pipeline_execution_steps_:_NextToken">NextToken</code></td>
<td><p>If the result of the previous
<code>list_pipeline_execution_steps</code> request was truncated, the
response includes a <code>NextToken</code>. To retrieve the next set of
pipeline execution steps, use the token in the next request.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_pipeline_execution_steps_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of pipeline execution steps to return in the
response.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_pipeline_execution_steps_:_SortOrder">SortOrder</code></td>
<td><p>The field by which to sort results. The default is
<code>CreatedTime</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PipelineExecutionSteps = list(
        list(
          StepName = "string",
          StepDisplayName = "string",
          StepDescription = "string",
          StartTime = as.POSIXct(
            "2015-01-01"
          ),
          EndTime = as.POSIXct(
            "2015-01-01"
          ),
          StepStatus = "Starting"|"Executing"|"Stopping"|"Stopped"|"Failed"|"Succeeded",
          CacheHitResult = list(
            SourcePipelineExecutionArn = "string"
          ),
          AttemptCount = 123,
          FailureReason = "string",
          Metadata = list(
            TrainingJob = list(
              Arn = "string"
            ),
            ProcessingJob = list(
              Arn = "string"
            ),
            TransformJob = list(
              Arn = "string"
            ),
            TuningJob = list(
              Arn = "string"
            ),
            Model = list(
              Arn = "string"
            ),
            RegisterModel = list(
              Arn = "string"
            ),
            Condition = list(
              Outcome = "True"|"False"
            ),
            Callback = list(
              CallbackToken = "string",
              SqsQueueUrl = "string",
              OutputParameters = list(
                list(
                  Name = "string",
                  Value = "string"
                )
              )
            ),
            Lambda = list(
              Arn = "string",
              OutputParameters = list(
                list(
                  Name = "string",
                  Value = "string"
                )
              )
            ),
            QualityCheck = list(
              CheckType = "string",
              BaselineUsedForDriftCheckStatistics = "string",
              BaselineUsedForDriftCheckConstraints = "string",
              CalculatedBaselineStatistics = "string",
              CalculatedBaselineConstraints = "string",
              ModelPackageGroupName = "string",
              ViolationReport = "string",
              CheckJobArn = "string",
              SkipCheck = TRUE|FALSE,
              RegisterNewBaseline = TRUE|FALSE
            ),
            ClarifyCheck = list(
              CheckType = "string",
              BaselineUsedForDriftCheckConstraints = "string",
              CalculatedBaselineConstraints = "string",
              ModelPackageGroupName = "string",
              ViolationReport = "string",
              CheckJobArn = "string",
              SkipCheck = TRUE|FALSE,
              RegisterNewBaseline = TRUE|FALSE
            ),
            EMR = list(
              ClusterId = "string",
              StepId = "string",
              StepName = "string",
              LogFilePath = "string"
            ),
            Fail = list(
              ErrorMessage = "string"
            ),
            AutoMLJob = list(
              Arn = "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_pipeline_execution_steps(
      PipelineExecutionArn = "string",
      NextToken = "string",
      MaxResults = 123,
      SortOrder = "Ascending"|"Descending"
    )
