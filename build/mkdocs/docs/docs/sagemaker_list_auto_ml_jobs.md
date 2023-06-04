<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_auto_ml_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Request a list of jobs

### Description

Request a list of jobs.

### Usage

    sagemaker_list_auto_ml_jobs(CreationTimeAfter, CreationTimeBefore,
      LastModifiedTimeAfter, LastModifiedTimeBefore, NameContains,
      StatusEquals, SortOrder, SortBy, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_auto_ml_jobs_:_CreationTimeAfter">CreationTimeAfter</code></td>
<td><p>Request a list of jobs, using a filter for time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_auto_ml_jobs_:_CreationTimeBefore">CreationTimeBefore</code></td>
<td><p>Request a list of jobs, using a filter for time.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_auto_ml_jobs_:_LastModifiedTimeAfter">LastModifiedTimeAfter</code></td>
<td><p>Request a list of jobs, using a filter for time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_auto_ml_jobs_:_LastModifiedTimeBefore">LastModifiedTimeBefore</code></td>
<td><p>Request a list of jobs, using a filter for time.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_auto_ml_jobs_:_NameContains">NameContains</code></td>
<td><p>Request a list of jobs, using a search filter for name.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_auto_ml_jobs_:_StatusEquals">StatusEquals</code></td>
<td><p>Request a list of jobs, using a filter for status.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_auto_ml_jobs_:_SortOrder">SortOrder</code></td>
<td><p>The sort order for the results. The default is
<code>Descending</code>.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_list_auto_ml_jobs_:_SortBy">SortBy</code></td>
<td><p>The parameter by which to sort the results. The default is
<code>Name</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_auto_ml_jobs_:_MaxResults">MaxResults</code></td>
<td><p>Request a list of jobs up to a specified limit.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_auto_ml_jobs_:_NextToken">NextToken</code></td>
<td><p>If the previous response was truncated, you receive this token.
Use it in your next request to receive the next set of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AutoMLJobSummaries = list(
        list(
          AutoMLJobName = "string",
          AutoMLJobArn = "string",
          AutoMLJobStatus = "Completed"|"InProgress"|"Failed"|"Stopped"|"Stopping",
          AutoMLJobSecondaryStatus = "Starting"|"AnalyzingData"|"FeatureEngineering"|"ModelTuning"|"MaxCandidatesReached"|"Failed"|"Stopped"|"MaxAutoMLJobRuntimeReached"|"Stopping"|"CandidateDefinitionsGenerated"|"GeneratingExplainabilityReport"|"Completed"|"ExplainabilityError"|"DeployingModel"|"ModelDeploymentError"|"GeneratingModelInsightsReport"|"ModelInsightsError"|"TrainingModels",
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
          PartialFailureReasons = list(
            list(
              PartialFailureMessage = "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_auto_ml_jobs(
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
      StatusEquals = "Completed"|"InProgress"|"Failed"|"Stopped"|"Stopping",
      SortOrder = "Ascending"|"Descending",
      SortBy = "Name"|"CreationTime"|"Status",
      MaxResults = 123,
      NextToken = "string"
    )
