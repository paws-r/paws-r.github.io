<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>datapipeline_validate_pipeline_definition</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Validates the specified pipeline definition to ensure that it is well formed and can be run without error

### Description

Validates the specified pipeline definition to ensure that it is well
formed and can be run without error.

### Usage

    datapipeline_validate_pipeline_definition(pipelineId, pipelineObjects,
      parameterObjects, parameterValues)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="datapipeline_validate_pipeline_definition_:_pipelineId">pipelineId</code></td>
<td><p>[required] The ID of the pipeline.</p></td>
</tr>
<tr class="even">
<td><code
id="datapipeline_validate_pipeline_definition_:_pipelineObjects">pipelineObjects</code></td>
<td><p>[required] The objects that define the pipeline changes to
validate against the pipeline.</p></td>
</tr>
<tr class="odd">
<td><code
id="datapipeline_validate_pipeline_definition_:_parameterObjects">parameterObjects</code></td>
<td><p>The parameter objects used with the pipeline.</p></td>
</tr>
<tr class="even">
<td><code
id="datapipeline_validate_pipeline_definition_:_parameterValues">parameterValues</code></td>
<td><p>The parameter values used with the pipeline.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      validationErrors = list(
        list(
          id = "string",
          errors = list(
            "string"
          )
        )
      ),
      validationWarnings = list(
        list(
          id = "string",
          warnings = list(
            "string"
          )
        )
      ),
      errored = TRUE|FALSE
    )

### Request syntax

    svc$validate_pipeline_definition(
      pipelineId = "string",
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
