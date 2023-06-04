<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_hyper_parameter_tuning_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of HyperParameterTuningJobSummary objects that describe the hyperparameter tuning jobs launched in your account

### Description

Gets a list of
[HyperParameterTuningJobSummary](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_HyperParameterTuningJobSummary.html)
objects that describe the hyperparameter tuning jobs launched in your
account.

### Usage

    sagemaker_list_hyper_parameter_tuning_jobs(NextToken, MaxResults,
      SortBy, SortOrder, NameContains, CreationTimeAfter, CreationTimeBefore,
      LastModifiedTimeAfter, LastModifiedTimeBefore, StatusEquals)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_hyper_parameter_tuning_jobs_:_NextToken">NextToken</code></td>
<td><p>If the result of the previous
<code>list_hyper_parameter_tuning_jobs</code> request was truncated, the
response includes a <code>NextToken</code>. To retrieve the next set of
tuning jobs, use the token in the next request.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_hyper_parameter_tuning_jobs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of tuning jobs to return. The default value is
10.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_hyper_parameter_tuning_jobs_:_SortBy">SortBy</code></td>
<td><p>The field to sort results by. The default is
<code>Name</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_hyper_parameter_tuning_jobs_:_SortOrder">SortOrder</code></td>
<td><p>The sort order for results. The default is
<code>Ascending</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_hyper_parameter_tuning_jobs_:_NameContains">NameContains</code></td>
<td><p>A string in the tuning job name. This filter returns only tuning
jobs whose name contains the specified string.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_hyper_parameter_tuning_jobs_:_CreationTimeAfter">CreationTimeAfter</code></td>
<td><p>A filter that returns only tuning jobs that were created after
the specified time.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_hyper_parameter_tuning_jobs_:_CreationTimeBefore">CreationTimeBefore</code></td>
<td><p>A filter that returns only tuning jobs that were created before
the specified time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_hyper_parameter_tuning_jobs_:_LastModifiedTimeAfter">LastModifiedTimeAfter</code></td>
<td><p>A filter that returns only tuning jobs that were modified after
the specified time.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_hyper_parameter_tuning_jobs_:_LastModifiedTimeBefore">LastModifiedTimeBefore</code></td>
<td><p>A filter that returns only tuning jobs that were modified before
the specified time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_hyper_parameter_tuning_jobs_:_StatusEquals">StatusEquals</code></td>
<td><p>A filter that returns only tuning jobs with the specified
status.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HyperParameterTuningJobSummaries = list(
        list(
          HyperParameterTuningJobName = "string",
          HyperParameterTuningJobArn = "string",
          HyperParameterTuningJobStatus = "Completed"|"InProgress"|"Failed"|"Stopped"|"Stopping",
          Strategy = "Bayesian"|"Random"|"Hyperband"|"Grid",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          HyperParameterTuningEndTime = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          ),
          TrainingJobStatusCounters = list(
            Completed = 123,
            InProgress = 123,
            RetryableError = 123,
            NonRetryableError = 123,
            Stopped = 123
          ),
          ObjectiveStatusCounters = list(
            Succeeded = 123,
            Pending = 123,
            Failed = 123
          ),
          ResourceLimits = list(
            MaxNumberOfTrainingJobs = 123,
            MaxParallelTrainingJobs = 123,
            MaxRuntimeInSeconds = 123
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_hyper_parameter_tuning_jobs(
      NextToken = "string",
      MaxResults = 123,
      SortBy = "Name"|"Status"|"CreationTime",
      SortOrder = "Ascending"|"Descending",
      NameContains = "string",
      CreationTimeAfter = as.POSIXct(
        "2015-01-01"
      ),
      CreationTimeBefore = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTimeAfter = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTimeBefore = as.POSIXct(
        "2015-01-01"
      ),
      StatusEquals = "Completed"|"InProgress"|"Failed"|"Stopped"|"Stopping"
    )
