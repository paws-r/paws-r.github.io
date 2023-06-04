<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_transform_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists transform jobs

### Description

Lists transform jobs.

### Usage

    sagemaker_list_transform_jobs(CreationTimeAfter, CreationTimeBefore,
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
id="sagemaker_list_transform_jobs_:_CreationTimeAfter">CreationTimeAfter</code></td>
<td><p>A filter that returns only transform jobs created after the
specified time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_transform_jobs_:_CreationTimeBefore">CreationTimeBefore</code></td>
<td><p>A filter that returns only transform jobs created before the
specified time.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_transform_jobs_:_LastModifiedTimeAfter">LastModifiedTimeAfter</code></td>
<td><p>A filter that returns only transform jobs modified after the
specified time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_transform_jobs_:_LastModifiedTimeBefore">LastModifiedTimeBefore</code></td>
<td><p>A filter that returns only transform jobs modified before the
specified time.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_transform_jobs_:_NameContains">NameContains</code></td>
<td><p>A string in the transform job name. This filter returns only
transform jobs whose name contains the specified string.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_transform_jobs_:_StatusEquals">StatusEquals</code></td>
<td><p>A filter that retrieves only transform jobs with a specific
status.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_list_transform_jobs_:_SortBy">SortBy</code></td>
<td><p>The field to sort results by. The default is
<code>CreationTime</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_transform_jobs_:_SortOrder">SortOrder</code></td>
<td><p>The sort order for results. The default is
<code>Descending</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_transform_jobs_:_NextToken">NextToken</code></td>
<td><p>If the result of the previous <code>list_transform_jobs</code>
request was truncated, the response includes a <code>NextToken</code>.
To retrieve the next set of transform jobs, use the token in the next
request.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_transform_jobs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of transform jobs to return in the response.
The default value is <code>10</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TransformJobSummaries = list(
        list(
          TransformJobName = "string",
          TransformJobArn = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          TransformEndTime = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          ),
          TransformJobStatus = "InProgress"|"Completed"|"Failed"|"Stopping"|"Stopped",
          FailureReason = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_transform_jobs(
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
