<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codepipeline_get_pipeline_state</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the state of a pipeline, including the stages and actions

### Description

Returns information about the state of a pipeline, including the stages
and actions.

Values returned in the `revisionId` and `revisionUrl` fields indicate
the source revision information, such as the commit ID, for the current
state.

### Usage

    codepipeline_get_pipeline_state(name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codepipeline_get_pipeline_state_:_name">name</code></td>
<td><p>[required] The name of the pipeline about which you want to get
information.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      pipelineName = "string",
      pipelineVersion = 123,
      stageStates = list(
        list(
          stageName = "string",
          inboundExecution = list(
            pipelineExecutionId = "string",
            status = "Cancelled"|"InProgress"|"Failed"|"Stopped"|"Stopping"|"Succeeded"
          ),
          inboundTransitionState = list(
            enabled = TRUE|FALSE,
            lastChangedBy = "string",
            lastChangedAt = as.POSIXct(
              "2015-01-01"
            ),
            disabledReason = "string"
          ),
          actionStates = list(
            list(
              actionName = "string",
              currentRevision = list(
                revisionId = "string",
                revisionChangeId = "string",
                created = as.POSIXct(
                  "2015-01-01"
                )
              ),
              latestExecution = list(
                actionExecutionId = "string",
                status = "InProgress"|"Abandoned"|"Succeeded"|"Failed",
                summary = "string",
                lastStatusChange = as.POSIXct(
                  "2015-01-01"
                ),
                token = "string",
                lastUpdatedBy = "string",
                externalExecutionId = "string",
                externalExecutionUrl = "string",
                percentComplete = 123,
                errorDetails = list(
                  code = "string",
                  message = "string"
                )
              ),
              entityUrl = "string",
              revisionUrl = "string"
            )
          ),
          latestExecution = list(
            pipelineExecutionId = "string",
            status = "Cancelled"|"InProgress"|"Failed"|"Stopped"|"Stopping"|"Succeeded"
          )
        )
      ),
      created = as.POSIXct(
        "2015-01-01"
      ),
      updated = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$get_pipeline_state(
      name = "string"
    )
