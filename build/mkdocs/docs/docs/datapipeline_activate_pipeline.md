<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>datapipeline_activate_pipeline</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Validates the specified pipeline and starts processing pipeline tasks

### Description

Validates the specified pipeline and starts processing pipeline tasks.
If the pipeline does not pass validation, activation fails.

If you need to pause the pipeline to investigate an issue with a
component, such as a data source or script, call `deactivate_pipeline`.

To activate a finished pipeline, modify the end date for the pipeline
and then activate it.

### Usage

    datapipeline_activate_pipeline(pipelineId, parameterValues,
      startTimestamp)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="datapipeline_activate_pipeline_:_pipelineId">pipelineId</code></td>
<td><p>[required] The ID of the pipeline.</p></td>
</tr>
<tr class="even">
<td><code
id="datapipeline_activate_pipeline_:_parameterValues">parameterValues</code></td>
<td><p>A list of parameter values to pass to the pipeline at
activation.</p></td>
</tr>
<tr class="odd">
<td><code
id="datapipeline_activate_pipeline_:_startTimestamp">startTimestamp</code></td>
<td><p>The date and time to resume the pipeline. By default, the
pipeline resumes from the last completed execution.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$activate_pipeline(
      pipelineId = "string",
      parameterValues = list(
        list(
          id = "string",
          stringValue = "string"
        )
      ),
      startTimestamp = as.POSIXct(
        "2015-01-01"
      )
    )
