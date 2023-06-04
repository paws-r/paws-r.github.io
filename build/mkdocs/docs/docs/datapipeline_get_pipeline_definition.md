<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>datapipeline_get_pipeline_definition</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the definition of the specified pipeline

### Description

Gets the definition of the specified pipeline. You can call
`get_pipeline_definition` to retrieve the pipeline definition that you
provided using `put_pipeline_definition`.

### Usage

    datapipeline_get_pipeline_definition(pipelineId, version)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="datapipeline_get_pipeline_definition_:_pipelineId">pipelineId</code></td>
<td><p>[required] The ID of the pipeline.</p></td>
</tr>
<tr class="even">
<td><code
id="datapipeline_get_pipeline_definition_:_version">version</code></td>
<td><p>The version of the pipeline definition to retrieve. Set this
parameter to <code>latest</code> (default) to use the last definition
saved to the pipeline or <code>active</code> to use the last definition
that was activated.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      pipelineObjects = list(
        list(
          id = "string",
          name = "string",
          fields = list(
            list(
              key = "string",
              stringValue = "string",
              refValue = "string"
            )
          )
        )
      ),
      parameterObjects = list(
        list(
          id = "string",
          attributes = list(
            list(
              key = "string",
              stringValue = "string"
            )
          )
        )
      ),
      parameterValues = list(
        list(
          id = "string",
          stringValue = "string"
        )
      )
    )

### Request syntax

    svc$get_pipeline_definition(
      pipelineId = "string",
      version = "string"
    )
