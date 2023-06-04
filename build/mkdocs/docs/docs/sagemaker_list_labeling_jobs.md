<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_labeling_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of labeling jobs

### Description

Gets a list of labeling jobs.

### Usage

    sagemaker_list_labeling_jobs(CreationTimeAfter, CreationTimeBefore,
      LastModifiedTimeAfter, LastModifiedTimeBefore, MaxResults, NextToken,
      NameContains, SortBy, SortOrder, StatusEquals)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_labeling_jobs_:_CreationTimeAfter">CreationTimeAfter</code></td>
<td><p>A filter that returns only labeling jobs created after the
specified time (timestamp).</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_labeling_jobs_:_CreationTimeBefore">CreationTimeBefore</code></td>
<td><p>A filter that returns only labeling jobs created before the
specified time (timestamp).</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_labeling_jobs_:_LastModifiedTimeAfter">LastModifiedTimeAfter</code></td>
<td><p>A filter that returns only labeling jobs modified after the
specified time (timestamp).</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_labeling_jobs_:_LastModifiedTimeBefore">LastModifiedTimeBefore</code></td>
<td><p>A filter that returns only labeling jobs modified before the
specified time (timestamp).</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_labeling_jobs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of labeling jobs to return in each page of the
response.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_labeling_jobs_:_NextToken">NextToken</code></td>
<td><p>If the result of the previous <code>list_labeling_jobs</code>
request was truncated, the response includes a <code>NextToken</code>.
To retrieve the next set of labeling jobs, use the token in the next
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_labeling_jobs_:_NameContains">NameContains</code></td>
<td><p>A string in the labeling job name. This filter returns only
labeling jobs whose name contains the specified string.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_list_labeling_jobs_:_SortBy">SortBy</code></td>
<td><p>The field to sort results by. The default is
<code>CreationTime</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_labeling_jobs_:_SortOrder">SortOrder</code></td>
<td><p>The sort order for results. The default is
<code>Ascending</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_labeling_jobs_:_StatusEquals">StatusEquals</code></td>
<td><p>A filter that retrieves only labeling jobs with a specific
status.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LabelingJobSummaryList = list(
        list(
          LabelingJobName = "string",
          LabelingJobArn = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          ),
          LabelingJobStatus = "Initializing"|"InProgress"|"Completed"|"Failed"|"Stopping"|"Stopped",
          LabelCounters = list(
            TotalLabeled = 123,
            HumanLabeled = 123,
            MachineLabeled = 123,
            FailedNonRetryableError = 123,
            Unlabeled = 123
          ),
          WorkteamArn = "string",
          PreHumanTaskLambdaArn = "string",
          AnnotationConsolidationLambdaArn = "string",
          FailureReason = "string",
          LabelingJobOutput = list(
            OutputDatasetS3Uri = "string",
            FinalActiveLearningModelArn = "string"
          ),
          InputConfig = list(
            DataSource = list(
              S3DataSource = list(
                ManifestS3Uri = "string"
              ),
              SnsDataSource = list(
                SnsTopicArn = "string"
              )
            ),
            DataAttributes = list(
              ContentClassifiers = list(
                "FreeOfPersonallyIdentifiableInformation"|"FreeOfAdultContent"
              )
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_labeling_jobs(
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
      MaxResults = 123,
      NextToken = "string",
      NameContains = "string",
      SortBy = "Name"|"CreationTime"|"Status",
      SortOrder = "Ascending"|"Descending",
      StatusEquals = "Initializing"|"InProgress"|"Completed"|"Failed"|"Stopping"|"Stopped"
    )
