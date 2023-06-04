<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_candidates_for_auto_ml_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List the candidates created for the job

### Description

List the candidates created for the job.

### Usage

    sagemaker_list_candidates_for_auto_ml_job(AutoMLJobName, StatusEquals,
      CandidateNameEquals, SortOrder, SortBy, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_candidates_for_auto_ml_job_:_AutoMLJobName">AutoMLJobName</code></td>
<td><p>[required] List the candidates created for the job by providing
the job's name.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_candidates_for_auto_ml_job_:_StatusEquals">StatusEquals</code></td>
<td><p>List the candidates for the job and filter by status.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_candidates_for_auto_ml_job_:_CandidateNameEquals">CandidateNameEquals</code></td>
<td><p>List the candidates for the job and filter by candidate
name.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_candidates_for_auto_ml_job_:_SortOrder">SortOrder</code></td>
<td><p>The sort order for the results. The default is
<code>Ascending</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_candidates_for_auto_ml_job_:_SortBy">SortBy</code></td>
<td><p>The parameter by which to sort the results. The default is
<code>Descending</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_candidates_for_auto_ml_job_:_MaxResults">MaxResults</code></td>
<td><p>List the job's candidates up to a specified limit.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_candidates_for_auto_ml_job_:_NextToken">NextToken</code></td>
<td><p>If the previous response was truncated, you receive this token.
Use it in your next request to receive the next set of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Candidates = list(
        list(
          CandidateName = "string",
          FinalAutoMLJobObjectiveMetric = list(
            Type = "Maximize"|"Minimize",
            MetricName = "Accuracy"|"MSE"|"F1"|"F1macro"|"AUC"|"RMSE"|"MAE"|"R2"|"BalancedAccuracy"|"Precision"|"PrecisionMacro"|"Recall"|"RecallMacro",
            Value = 123.0,
            StandardMetricName = "Accuracy"|"MSE"|"F1"|"F1macro"|"AUC"|"RMSE"|"MAE"|"R2"|"BalancedAccuracy"|"Precision"|"PrecisionMacro"|"Recall"|"RecallMacro"
          ),
          ObjectiveStatus = "Succeeded"|"Pending"|"Failed",
          CandidateSteps = list(
            list(
              CandidateStepType = "AWS::SageMaker::TrainingJob"|"AWS::SageMaker::TransformJob"|"AWS::SageMaker::ProcessingJob",
              CandidateStepArn = "string",
              CandidateStepName = "string"
            )
          ),
          CandidateStatus = "Completed"|"InProgress"|"Failed"|"Stopped"|"Stopping",
          InferenceContainers = list(
            list(
              Image = "string",
              ModelDataUrl = "string",
              Environment = list(
                "string"
              )
            )
          ),
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          EndTime = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          ),
          FailureReason = "string",
          CandidateProperties = list(
            CandidateArtifactLocations = list(
              Explainability = "string",
              ModelInsights = "string"
            ),
            CandidateMetrics = list(
              list(
                MetricName = "Accuracy"|"MSE"|"F1"|"F1macro"|"AUC"|"RMSE"|"MAE"|"R2"|"BalancedAccuracy"|"Precision"|"PrecisionMacro"|"Recall"|"RecallMacro",
                Value = 123.0,
                Set = "Train"|"Validation"|"Test",
                StandardMetricName = "Accuracy"|"MSE"|"F1"|"F1macro"|"AUC"|"RMSE"|"MAE"|"R2"|"BalancedAccuracy"|"Precision"|"PrecisionMacro"|"Recall"|"RecallMacro"|"LogLoss"|"InferenceLatency"
              )
            )
          ),
          InferenceContainerDefinitions = list(
            list(
              list(
                Image = "string",
                ModelDataUrl = "string",
                Environment = list(
                  "string"
                )
              )
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_candidates_for_auto_ml_job(
      AutoMLJobName = "string",
      StatusEquals = "Completed"|"InProgress"|"Failed"|"Stopped"|"Stopping",
      CandidateNameEquals = "string",
      SortOrder = "Ascending"|"Descending",
      SortBy = "CreationTime"|"Status"|"FinalObjectiveMetricValue",
      MaxResults = 123,
      NextToken = "string"
    )
