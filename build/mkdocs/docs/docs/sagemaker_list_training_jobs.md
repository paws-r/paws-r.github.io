<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_training_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists training jobs

### Description

Lists training jobs.

When `StatusEquals` and `MaxResults` are set at the same time, the
`MaxResults` number of training jobs are first retrieved ignoring the
`StatusEquals` parameter and then they are filtered by the
`StatusEquals` parameter, which is returned as a response.

For example, if `list_training_jobs` is invoked with the following
parameters:

`⁠{ ... MaxResults: 100, StatusEquals: InProgress ... }⁠`

First, 100 trainings jobs with any status, including those other than
`InProgress`, are selected (sorted according to the creation time, from
the most current to the oldest). Next, those with a status of
`InProgress` are returned.

You can quickly test the API using the following Amazon Web Services CLI
code.

`⁠aws sagemaker list-training-jobs --max-results 100 --status-equals InProgress⁠`

### Usage

    sagemaker_list_training_jobs(NextToken, MaxResults, CreationTimeAfter,
      CreationTimeBefore, LastModifiedTimeAfter, LastModifiedTimeBefore,
      NameContains, StatusEquals, SortBy, SortOrder, WarmPoolStatusEquals)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_training_jobs_:_NextToken">NextToken</code></td>
<td><p>If the result of the previous <code>list_training_jobs</code>
request was truncated, the response includes a <code>NextToken</code>.
To retrieve the next set of training jobs, use the token in the next
request.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_training_jobs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of training jobs to return in the
response.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_training_jobs_:_CreationTimeAfter">CreationTimeAfter</code></td>
<td><p>A filter that returns only training jobs created after the
specified time (timestamp).</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_training_jobs_:_CreationTimeBefore">CreationTimeBefore</code></td>
<td><p>A filter that returns only training jobs created before the
specified time (timestamp).</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_training_jobs_:_LastModifiedTimeAfter">LastModifiedTimeAfter</code></td>
<td><p>A filter that returns only training jobs modified after the
specified time (timestamp).</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_training_jobs_:_LastModifiedTimeBefore">LastModifiedTimeBefore</code></td>
<td><p>A filter that returns only training jobs modified before the
specified time (timestamp).</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_training_jobs_:_NameContains">NameContains</code></td>
<td><p>A string in the training job name. This filter returns only
training jobs whose name contains the specified string.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_training_jobs_:_StatusEquals">StatusEquals</code></td>
<td><p>A filter that retrieves only training jobs with a specific
status.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_list_training_jobs_:_SortBy">SortBy</code></td>
<td><p>The field to sort results by. The default is
<code>CreationTime</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_training_jobs_:_SortOrder">SortOrder</code></td>
<td><p>The sort order for results. The default is
<code>Ascending</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_training_jobs_:_WarmPoolStatusEquals">WarmPoolStatusEquals</code></td>
<td><p>A filter that retrieves only training jobs with a specific warm
pool status.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TrainingJobSummaries = list(
        list(
          TrainingJobName = "string",
          TrainingJobArn = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          TrainingEndTime = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          ),
          TrainingJobStatus = "InProgress"|"Completed"|"Failed"|"Stopping"|"Stopped",
          WarmPoolStatus = list(
            Status = "Available"|"Terminated"|"Reused"|"InUse",
            ResourceRetainedBillableTimeInSeconds = 123,
            ReusedByJob = "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_training_jobs(
      NextToken = "string",
      MaxResults = 123,
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
      NameContains = "string",
      StatusEquals = "InProgress"|"Completed"|"Failed"|"Stopping"|"Stopped",
      SortBy = "Name"|"CreationTime"|"Status",
      SortOrder = "Ascending"|"Descending",
      WarmPoolStatusEquals = "Available"|"Terminated"|"Reused"|"InUse"
    )
