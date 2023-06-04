<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codepipeline_list_action_executions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the action executions that have occurred in a pipeline

### Description

Lists the action executions that have occurred in a pipeline.

### Usage

    codepipeline_list_action_executions(pipelineName, filter, maxResults,
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
id="codepipeline_list_action_executions_:_pipelineName">pipelineName</code></td>
<td><p>[required] The name of the pipeline for which you want to list
action execution history.</p></td>
</tr>
<tr class="even">
<td><code
id="codepipeline_list_action_executions_:_filter">filter</code></td>
<td><p>Input information used to filter action execution
history.</p></td>
</tr>
<tr class="odd">
<td><code
id="codepipeline_list_action_executions_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return in a single call. To
retrieve the remaining results, make another call with the returned
nextToken value. Action execution history is retained for up to 12
months, based on action execution start times. Default value is 100.</p>
<p>Detailed execution history is available for executions run on or
after February 21, 2019.</p></td>
</tr>
<tr class="even">
<td><code
id="codepipeline_list_action_executions_:_nextToken">nextToken</code></td>
<td><p>The token that was returned from the previous
<code>list_action_executions</code> call, which can be used to return
the next set of action executions in the list.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      actionExecutionDetails = list(
        list(
          pipelineExecutionId = "string",
          actionExecutionId = "string",
          pipelineVersion = 123,
          stageName = "string",
          actionName = "string",
          startTime = as.POSIXct(
            "2015-01-01"
          ),
          lastUpdateTime = as.POSIXct(
            "2015-01-01"
          ),
          status = "InProgress"|"Abandoned"|"Succeeded"|"Failed",
          input = list(
            actionTypeId = list(
              category = "Source"|"Build"|"Deploy"|"Test"|"Invoke"|"Approval",
              owner = "AWS"|"ThirdParty"|"Custom",
              provider = "string",
              version = "string"
            ),
            configuration = list(
              "string"
            ),
            resolvedConfiguration = list(
              "string"
            ),
            roleArn = "string",
            region = "string",
            inputArtifacts = list(
              list(
                name = "string",
                s3location = list(
                  bucket = "string",
                  key = "string"
                )
              )
            ),
            namespace = "string"
          ),
          output = list(
            outputArtifacts = list(
              list(
                name = "string",
                s3location = list(
                  bucket = "string",
                  key = "string"
                )
              )
            ),
            executionResult = list(
              externalExecutionId = "string",
              externalExecutionSummary = "string",
              externalExecutionUrl = "string"
            ),
            outputVariables = list(
              "string"
            )
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_action_executions(
      pipelineName = "string",
      filter = list(
        pipelineExecutionId = "string"
      ),
      maxResults = 123,
      nextToken = "string"
    )
