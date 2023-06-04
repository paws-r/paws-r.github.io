<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_pipelines</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of pipelines

### Description

Gets a list of pipelines.

### Usage

    sagemaker_list_pipelines(PipelineNamePrefix, CreatedAfter,
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
id="sagemaker_list_pipelines_:_PipelineNamePrefix">PipelineNamePrefix</code></td>
<td><p>The prefix of the pipeline name.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_pipelines_:_CreatedAfter">CreatedAfter</code></td>
<td><p>A filter that returns the pipelines that were created after a
specified time.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_pipelines_:_CreatedBefore">CreatedBefore</code></td>
<td><p>A filter that returns the pipelines that were created before a
specified time.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_list_pipelines_:_SortBy">SortBy</code></td>
<td><p>The field by which to sort results. The default is
<code>CreatedTime</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_pipelines_:_SortOrder">SortOrder</code></td>
<td><p>The sort order for results.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_pipelines_:_NextToken">NextToken</code></td>
<td><p>If the result of the previous <code>list_pipelines</code> request
was truncated, the response includes a <code>NextToken</code>. To
retrieve the next set of pipelines, use the token in the next
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_pipelines_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of pipelines to return in the
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PipelineSummaries = list(
        list(
          PipelineArn = "string",
          PipelineName = "string",
          PipelineDisplayName = "string",
          PipelineDescription = "string",
          RoleArn = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          ),
          LastExecutionTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_pipelines(
      PipelineNamePrefix = "string",
      CreatedAfter = as.POSIXct(
        "2015-01-01"
      ),
      CreatedBefore = as.POSIXct(
        "2015-01-01"
      ),
      SortBy = "Name"|"CreationTime",
      SortOrder = "Ascending"|"Descending",
      NextToken = "string",
      MaxResults = 123
    )
