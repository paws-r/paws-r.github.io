<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_training_jobs_for_hyper_parameter_tuning_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of TrainingJobSummary objects that describe the training jobs that a hyperparameter tuning job launched

### Description

Gets a list of
[TrainingJobSummary](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_TrainingJobSummary.html)
objects that describe the training jobs that a hyperparameter tuning job
launched.

### Usage

    sagemaker_list_training_jobs_for_hyper_parameter_tuning_job(
      HyperParameterTuningJobName, NextToken, MaxResults, StatusEquals,
      SortBy, SortOrder)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_training_jobs_for_hyper_parameter_tuning_job_:_HyperParameterTuningJobName">HyperParameterTuningJobName</code></td>
<td><p>[required] The name of the tuning job whose training jobs you
want to list.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_training_jobs_for_hyper_parameter_tuning_job_:_NextToken">NextToken</code></td>
<td><p>If the result of the previous
<code>list_training_jobs_for_hyper_parameter_tuning_job</code> request
was truncated, the response includes a <code>NextToken</code>. To
retrieve the next set of training jobs, use the token in the next
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_training_jobs_for_hyper_parameter_tuning_job_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of training jobs to return. The default value
is 10.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_training_jobs_for_hyper_parameter_tuning_job_:_StatusEquals">StatusEquals</code></td>
<td><p>A filter that returns only training jobs with the specified
status.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_training_jobs_for_hyper_parameter_tuning_job_:_SortBy">SortBy</code></td>
<td><p>The field to sort results by. The default is
<code>Name</code>.</p>
<p>If the value of this field is <code>FinalObjectiveMetricValue</code>,
any training jobs that did not return an objective metric are not
listed.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_training_jobs_for_hyper_parameter_tuning_job_:_SortOrder">SortOrder</code></td>
<td><p>The sort order for results. The default is
<code>Ascending</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TrainingJobSummaries = list(
        list(
          TrainingJobDefinitionName = "string",
          TrainingJobName = "string",
          TrainingJobArn = "string",
          TuningJobName = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          TrainingStartTime = as.POSIXct(
            "2015-01-01"
          ),
          TrainingEndTime = as.POSIXct(
            "2015-01-01"
          ),
          TrainingJobStatus = "InProgress"|"Completed"|"Failed"|"Stopping"|"Stopped",
          TunedHyperParameters = list(
            "string"
          ),
          FailureReason = "string",
          FinalHyperParameterTuningJobObjectiveMetric = list(
            Type = "Maximize"|"Minimize",
            MetricName = "string",
            Value = 123.0
          ),
          ObjectiveStatus = "Succeeded"|"Pending"|"Failed"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_training_jobs_for_hyper_parameter_tuning_job(
      HyperParameterTuningJobName = "string",
      NextToken = "string",
      MaxResults = 123,
      StatusEquals = "InProgress"|"Completed"|"Failed"|"Stopping"|"Stopped",
      SortBy = "Name"|"CreationTime"|"Status"|"FinalObjectiveMetricValue",
      SortOrder = "Ascending"|"Descending"
    )
