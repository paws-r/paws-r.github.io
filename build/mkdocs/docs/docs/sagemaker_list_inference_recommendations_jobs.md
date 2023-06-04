<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_inference_recommendations_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists recommendation jobs that satisfy various filters

### Description

Lists recommendation jobs that satisfy various filters.

### Usage

    sagemaker_list_inference_recommendations_jobs(CreationTimeAfter,
      CreationTimeBefore, LastModifiedTimeAfter, LastModifiedTimeBefore,
      NameContains, StatusEquals, SortBy, SortOrder, NextToken, MaxResults,
      ModelNameEquals, ModelPackageVersionArnEquals)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_inference_recommendations_jobs_:_CreationTimeAfter">CreationTimeAfter</code></td>
<td><p>A filter that returns only jobs created after the specified time
(timestamp).</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_inference_recommendations_jobs_:_CreationTimeBefore">CreationTimeBefore</code></td>
<td><p>A filter that returns only jobs created before the specified time
(timestamp).</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_inference_recommendations_jobs_:_LastModifiedTimeAfter">LastModifiedTimeAfter</code></td>
<td><p>A filter that returns only jobs that were last modified after the
specified time (timestamp).</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_inference_recommendations_jobs_:_LastModifiedTimeBefore">LastModifiedTimeBefore</code></td>
<td><p>A filter that returns only jobs that were last modified before
the specified time (timestamp).</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_inference_recommendations_jobs_:_NameContains">NameContains</code></td>
<td><p>A string in the job name. This filter returns only
recommendations whose name contains the specified string.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_inference_recommendations_jobs_:_StatusEquals">StatusEquals</code></td>
<td><p>A filter that retrieves only inference recommendations jobs with
a specific status.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_inference_recommendations_jobs_:_SortBy">SortBy</code></td>
<td><p>The parameter by which to sort the results.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_inference_recommendations_jobs_:_SortOrder">SortOrder</code></td>
<td><p>The sort order for the results.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_inference_recommendations_jobs_:_NextToken">NextToken</code></td>
<td><p>If the response to a previous
<code>ListInferenceRecommendationsJobsRequest</code> request was
truncated, the response includes a <code>NextToken</code>. To retrieve
the next set of recommendations, use the token in the next
request.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_inference_recommendations_jobs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of recommendations to return in the
response.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_inference_recommendations_jobs_:_ModelNameEquals">ModelNameEquals</code></td>
<td><p>A filter that returns only jobs that were created for this
model.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_inference_recommendations_jobs_:_ModelPackageVersionArnEquals">ModelPackageVersionArnEquals</code></td>
<td><p>A filter that returns only jobs that were created for this
versioned model package.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InferenceRecommendationsJobs = list(
        list(
          JobName = "string",
          JobDescription = "string",
          JobType = "Default"|"Advanced",
          JobArn = "string",
          Status = "PENDING"|"IN_PROGRESS"|"COMPLETED"|"FAILED"|"STOPPING"|"STOPPED",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          CompletionTime = as.POSIXct(
            "2015-01-01"
          ),
          RoleArn = "string",
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          ),
          FailureReason = "string",
          ModelName = "string",
          SamplePayloadUrl = "string",
          ModelPackageVersionArn = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_inference_recommendations_jobs(
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
      StatusEquals = "PENDING"|"IN_PROGRESS"|"COMPLETED"|"FAILED"|"STOPPING"|"STOPPED",
      SortBy = "Name"|"CreationTime"|"Status",
      SortOrder = "Ascending"|"Descending",
      NextToken = "string",
      MaxResults = 123,
      ModelNameEquals = "string",
      ModelPackageVersionArnEquals = "string"
    )
