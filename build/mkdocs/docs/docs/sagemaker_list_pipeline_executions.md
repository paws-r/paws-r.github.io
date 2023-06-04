<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_pipeline_executions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of the pipeline executions

### Description

Gets a list of the pipeline executions.

### Usage

    sagemaker_list_pipeline_executions(PipelineName, CreatedAfter,
      CreatedBefore, SortBy, SortOrder, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_pipeline_executions_:_PipelineName">PipelineName</code></td>
<td><p>[required] The name of the pipeline.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_pipeline_executions_:_CreatedAfter">CreatedAfter</code></td>
<td><p>A filter that returns the pipeline executions that were created
after a specified time.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_pipeline_executions_:_CreatedBefore">CreatedBefore</code></td>
<td><p>A filter that returns the pipeline executions that were created
before a specified time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_pipeline_executions_:_SortBy">SortBy</code></td>
<td><p>The field by which to sort results. The default is
<code>CreatedTime</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_pipeline_executions_:_SortOrder">SortOrder</code></td>
<td><p>The sort order for results.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_pipeline_executions_:_NextToken">NextToken</code></td>
<td><p>If the result of the previous
<code>list_pipeline_executions</code> request was truncated, the
response includes a <code>NextToken</code>. To retrieve the next set of
pipeline executions, use the token in the next request.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_pipeline_executions_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of pipeline executions to return in the
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PipelineExecutionSummaries = list(
        list(
          PipelineExecutionArn = "string",
          StartTime = as.POSIXct(
            "2015-01-01"
          ),
          PipelineExecutionStatus = "Executing"|"Stopping"|"Stopped"|"Failed"|"Succeeded",
          PipelineExecutionDescription = "string",
          PipelineExecutionDisplayName = "string",
          PipelineExecutionFailureReason = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_pipeline_executions(
      PipelineName = "string",
      CreatedAfter = as.POSIXct(
        "2015-01-01"
      ),
      CreatedBefore = as.POSIXct(
        "2015-01-01"
      ),
      SortBy = "CreationTime"|"PipelineExecutionArn",
      SortOrder = "Ascending"|"Descending",
      NextToken = "string",
      MaxResults = 123
    )
