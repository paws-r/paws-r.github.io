<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codepipeline_list_pipeline_executions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a summary of the most recent executions for a pipeline

### Description

Gets a summary of the most recent executions for a pipeline.

### Usage

    codepipeline_list_pipeline_executions(pipelineName, maxResults,
      nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codepipeline_list_pipeline_executions_:_pipelineName">pipelineName</code></td>
<td><p>[required] The name of the pipeline for which you want to get
execution summary information.</p></td>
</tr>
<tr class="even">
<td><code
id="codepipeline_list_pipeline_executions_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return in a single call. To
retrieve the remaining results, make another call with the returned
nextToken value. Pipeline history is limited to the most recent 12
months, based on pipeline execution start times. Default value is
100.</p></td>
</tr>
<tr class="odd">
<td><code
id="codepipeline_list_pipeline_executions_:_nextToken">nextToken</code></td>
<td><p>The token that was returned from the previous
<code>list_pipeline_executions</code> call, which can be used to return
the next set of pipeline executions in the list.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      pipelineExecutionSummaries = list(
        list(
          pipelineExecutionId = "string",
          status = "Cancelled"|"InProgress"|"Stopped"|"Stopping"|"Succeeded"|"Superseded"|"Failed",
          startTime = as.POSIXct(
            "2015-01-01"
          ),
          lastUpdateTime = as.POSIXct(
            "2015-01-01"
          ),
          sourceRevisions = list(
            list(
              actionName = "string",
              revisionId = "string",
              revisionSummary = "string",
              revisionUrl = "string"
            )
          ),
          trigger = list(
            triggerType = "CreatePipeline"|"StartPipelineExecution"|"PollForSourceChanges"|"Webhook"|"CloudWatchEvent"|"PutActionRevision",
            triggerDetail = "string"
          ),
          stopTrigger = list(
            reason = "string"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_pipeline_executions(
      pipelineName = "string",
      maxResults = 123,
      nextToken = "string"
    )
