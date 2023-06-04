<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codepipeline_start_pipeline_execution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts the specified pipeline

### Description

Starts the specified pipeline. Specifically, it begins processing the
latest commit to the source location specified as part of the pipeline.

### Usage

    codepipeline_start_pipeline_execution(name, clientRequestToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codepipeline_start_pipeline_execution_:_name">name</code></td>
<td><p>[required] The name of the pipeline to start.</p></td>
</tr>
<tr class="even">
<td><code
id="codepipeline_start_pipeline_execution_:_clientRequestToken">clientRequestToken</code></td>
<td><p>The system-generated unique ID used to identify a unique
execution request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      pipelineExecutionId = "string"
    )

### Request syntax

    svc$start_pipeline_execution(
      name = "string",
      clientRequestToken = "string"
    )
