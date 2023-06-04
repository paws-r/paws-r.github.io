<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_model_bias_job_definitions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists model bias jobs definitions that satisfy various filters

### Description

Lists model bias jobs definitions that satisfy various filters.

### Usage

    sagemaker_list_model_bias_job_definitions(EndpointName, SortBy,
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
id="sagemaker_list_model_bias_job_definitions_:_EndpointName">EndpointName</code></td>
<td><p>Name of the endpoint to monitor for model bias.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_model_bias_job_definitions_:_SortBy">SortBy</code></td>
<td><p>Whether to sort results by the <code>Name</code> or
<code>CreationTime</code> field. The default is
<code>CreationTime</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_model_bias_job_definitions_:_SortOrder">SortOrder</code></td>
<td><p>Whether to sort the results in <code>Ascending</code> or
<code>Descending</code> order. The default is
<code>Descending</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_model_bias_job_definitions_:_NextToken">NextToken</code></td>
<td><p>The token returned if the response is truncated. To retrieve the
next set of job executions, use it in the next request.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_model_bias_job_definitions_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of model bias jobs to return in the response.
The default value is 10.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_model_bias_job_definitions_:_NameContains">NameContains</code></td>
<td><p>Filter for model bias jobs whose name contains a specified
string.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_model_bias_job_definitions_:_CreationTimeBefore">CreationTimeBefore</code></td>
<td><p>A filter that returns only model bias jobs created before a
specified time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_model_bias_job_definitions_:_CreationTimeAfter">CreationTimeAfter</code></td>
<td><p>A filter that returns only model bias jobs created after a
specified time.</p></td>
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

    svc$list_model_bias_job_definitions(
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
