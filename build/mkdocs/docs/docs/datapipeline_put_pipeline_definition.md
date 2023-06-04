<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>datapipeline_put_pipeline_definition</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds tasks, schedules, and preconditions to the specified pipeline

### Description

Adds tasks, schedules, and preconditions to the specified pipeline. You
can use `put_pipeline_definition` to populate a new pipeline.

`put_pipeline_definition` also validates the configuration as it adds it
to the pipeline. Changes to the pipeline are saved unless one of the
following three validation errors exists in the pipeline.

1.  An object is missing a name or identifier field.

2.  A string or reference field is empty.

3.  The number of objects in the pipeline exceeds the maximum allowed
    objects.

4.  The pipeline is in a FINISHED state.

Pipeline object definitions are passed to the `put_pipeline_definition`
action and returned by the `get_pipeline_definition` action.

### Usage

    datapipeline_put_pipeline_definition(pipelineId, pipelineObjects,
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
id="datapipeline_put_pipeline_definition_:_pipelineId">pipelineId</code></td>
<td><p>[required] The ID of the pipeline.</p></td>
</tr>
<tr class="even">
<td><code
id="datapipeline_put_pipeline_definition_:_pipelineObjects">pipelineObjects</code></td>
<td><p>[required] The objects that define the pipeline. These objects
overwrite the existing pipeline definition.</p></td>
</tr>
<tr class="odd">
<td><code
id="datapipeline_put_pipeline_definition_:_parameterObjects">parameterObjects</code></td>
<td><p>The parameter objects used with the pipeline.</p></td>
</tr>
<tr class="even">
<td><code
id="datapipeline_put_pipeline_definition_:_parameterValues">parameterValues</code></td>
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

    svc$put_pipeline_definition(
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
