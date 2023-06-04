<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codepipeline_get_pipeline_execution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about an execution of a pipeline, including details about artifacts, the pipeline execution ID, and the name, version, and status of the pipeline

### Description

Returns information about an execution of a pipeline, including details
about artifacts, the pipeline execution ID, and the name, version, and
status of the pipeline.

### Usage

    codepipeline_get_pipeline_execution(pipelineName, pipelineExecutionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codepipeline_get_pipeline_execution_:_pipelineName">pipelineName</code></td>
<td><p>[required] The name of the pipeline about which you want to get
execution details.</p></td>
</tr>
<tr class="even">
<td><code
id="codepipeline_get_pipeline_execution_:_pipelineExecutionId">pipelineExecutionId</code></td>
<td><p>[required] The ID of the pipeline execution about which you want
to get execution details.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      pipelineExecution = list(
        pipelineName = "string",
        pipelineVersion = 123,
        pipelineExecutionId = "string",
        status = "Cancelled"|"InProgress"|"Stopped"|"Stopping"|"Succeeded"|"Superseded"|"Failed",
        statusSummary = "string",
        artifactRevisions = list(
          list(
            name = "string",
            revisionId = "string",
            revisionChangeIdentifier = "string",
            revisionSummary = "string",
            created = as.POSIXct(
              "2015-01-01"
            ),
            revisionUrl = "string"
          )
        )
      )
    )

### Request syntax

    svc$get_pipeline_execution(
      pipelineName = "string",
      pipelineExecutionId = "string"
    )
