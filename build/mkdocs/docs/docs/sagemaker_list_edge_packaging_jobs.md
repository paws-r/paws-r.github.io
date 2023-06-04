<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_edge_packaging_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of edge packaging jobs

### Description

Returns a list of edge packaging jobs.

### Usage

    sagemaker_list_edge_packaging_jobs(NextToken, MaxResults,
      CreationTimeAfter, CreationTimeBefore, LastModifiedTimeAfter,
      LastModifiedTimeBefore, NameContains, ModelNameContains, StatusEquals,
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
id="sagemaker_list_edge_packaging_jobs_:_NextToken">NextToken</code></td>
<td><p>The response from the last list when returning a list large
enough to need tokening.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_edge_packaging_jobs_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of results to select.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_edge_packaging_jobs_:_CreationTimeAfter">CreationTimeAfter</code></td>
<td><p>Select jobs where the job was created after specified
time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_edge_packaging_jobs_:_CreationTimeBefore">CreationTimeBefore</code></td>
<td><p>Select jobs where the job was created before specified
time.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_edge_packaging_jobs_:_LastModifiedTimeAfter">LastModifiedTimeAfter</code></td>
<td><p>Select jobs where the job was updated after specified
time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_edge_packaging_jobs_:_LastModifiedTimeBefore">LastModifiedTimeBefore</code></td>
<td><p>Select jobs where the job was updated before specified
time.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_edge_packaging_jobs_:_NameContains">NameContains</code></td>
<td><p>Filter for jobs containing this name in their packaging job
name.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_edge_packaging_jobs_:_ModelNameContains">ModelNameContains</code></td>
<td><p>Filter for jobs where the model name contains this
string.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_edge_packaging_jobs_:_StatusEquals">StatusEquals</code></td>
<td><p>The job status to filter for.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_edge_packaging_jobs_:_SortBy">SortBy</code></td>
<td><p>Use to specify what column to sort by.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_edge_packaging_jobs_:_SortOrder">SortOrder</code></td>
<td><p>What direction to sort by.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EdgePackagingJobSummaries = list(
        list(
          EdgePackagingJobArn = "string",
          EdgePackagingJobName = "string",
          EdgePackagingJobStatus = "STARTING"|"INPROGRESS"|"COMPLETED"|"FAILED"|"STOPPING"|"STOPPED",
          CompilationJobName = "string",
          ModelName = "string",
          ModelVersion = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_edge_packaging_jobs(
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
      ModelNameContains = "string",
      StatusEquals = "STARTING"|"INPROGRESS"|"COMPLETED"|"FAILED"|"STOPPING"|"STOPPED",
      SortBy = "NAME"|"MODEL_NAME"|"CREATION_TIME"|"LAST_MODIFIED_TIME"|"STATUS",
      SortOrder = "Ascending"|"Descending"
    )
