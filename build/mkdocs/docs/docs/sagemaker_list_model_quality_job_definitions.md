<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_model_quality_job_definitions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of model quality monitoring job definitions in your account

### Description

Gets a list of model quality monitoring job definitions in your account.

### Usage

    sagemaker_list_model_quality_job_definitions(EndpointName, SortBy,
      SortOrder, NextToken, MaxResults, NameContains, CreationTimeBefore,
      CreationTimeAfter)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_model_quality_job_definitions_:_EndpointName">EndpointName</code></td>
<td><p>A filter that returns only model quality monitoring job
definitions that are associated with the specified endpoint.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_model_quality_job_definitions_:_SortBy">SortBy</code></td>
<td><p>The field to sort results by. The default is
<code>CreationTime</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_model_quality_job_definitions_:_SortOrder">SortOrder</code></td>
<td><p>The sort order for results. The default is
<code>Descending</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_model_quality_job_definitions_:_NextToken">NextToken</code></td>
<td><p>If the result of the previous
<code>list_model_quality_job_definitions</code> request was truncated,
the response includes a <code>NextToken</code>. To retrieve the next set
of model quality monitoring job definitions, use the token in the next
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_model_quality_job_definitions_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in a call to
<code>list_model_quality_job_definitions</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_model_quality_job_definitions_:_NameContains">NameContains</code></td>
<td><p>A string in the transform job name. This filter returns only
model quality monitoring job definitions whose name contains the
specified string.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_model_quality_job_definitions_:_CreationTimeBefore">CreationTimeBefore</code></td>
<td><p>A filter that returns only model quality monitoring job
definitions created before the specified time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_model_quality_job_definitions_:_CreationTimeAfter">CreationTimeAfter</code></td>
<td><p>A filter that returns only model quality monitoring job
definitions created after the specified time.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobDefinitionSummaries = list(
        list(
          MonitoringJobDefinitionName = "string",
          MonitoringJobDefinitionArn = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          EndpointName = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_model_quality_job_definitions(
      EndpointName = "string",
      SortBy = "Name"|"CreationTime",
      SortOrder = "Ascending"|"Descending",
      NextToken = "string",
      MaxResults = 123,
      NameContains = "string",
      CreationTimeBefore = as.POSIXct(
        "2015-01-01"
      ),
      CreationTimeAfter = as.POSIXct(
        "2015-01-01"
      )
    )
