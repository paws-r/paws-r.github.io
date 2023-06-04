<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_processing_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists processing jobs that satisfy various filters

### Description

Lists processing jobs that satisfy various filters.

### Usage

    sagemaker_list_processing_jobs(CreationTimeAfter, CreationTimeBefore,
      LastModifiedTimeAfter, LastModifiedTimeBefore, NameContains,
      StatusEquals, SortBy, SortOrder, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_processing_jobs_:_CreationTimeAfter">CreationTimeAfter</code></td>
<td><p>A filter that returns only processing jobs created after the
specified time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_processing_jobs_:_CreationTimeBefore">CreationTimeBefore</code></td>
<td><p>A filter that returns only processing jobs created after the
specified time.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_processing_jobs_:_LastModifiedTimeAfter">LastModifiedTimeAfter</code></td>
<td><p>A filter that returns only processing jobs modified after the
specified time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_processing_jobs_:_LastModifiedTimeBefore">LastModifiedTimeBefore</code></td>
<td><p>A filter that returns only processing jobs modified before the
specified time.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_processing_jobs_:_NameContains">NameContains</code></td>
<td><p>A string in the processing job name. This filter returns only
processing jobs whose name contains the specified string.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_processing_jobs_:_StatusEquals">StatusEquals</code></td>
<td><p>A filter that retrieves only processing jobs with a specific
status.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_processing_jobs_:_SortBy">SortBy</code></td>
<td><p>The field to sort results by. The default is
<code>CreationTime</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_processing_jobs_:_SortOrder">SortOrder</code></td>
<td><p>The sort order for results. The default is
<code>Ascending</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_processing_jobs_:_NextToken">NextToken</code></td>
<td><p>If the result of the previous <code>list_processing_jobs</code>
request was truncated, the response includes a <code>NextToken</code>.
To retrieve the next set of processing jobs, use the token in the next
request.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_processing_jobs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of processing jobs to return in the
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProcessingJobSummaries = list(
        list(
          ProcessingJobName = "string",
          ProcessingJobArn = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          ProcessingEndTime = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          ),
          ProcessingJobStatus = "InProgress"|"Completed"|"Failed"|"Stopping"|"Stopped",
          FailureReason = "string",
          ExitMessage = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_processing_jobs(
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
      NextToken = "string",
      MaxResults = 123
    )
