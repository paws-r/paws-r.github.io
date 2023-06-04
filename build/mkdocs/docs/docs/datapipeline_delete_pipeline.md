<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>datapipeline_delete_pipeline</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a pipeline, its pipeline definition, and its run history

### Description

Deletes a pipeline, its pipeline definition, and its run history. AWS
Data Pipeline attempts to cancel instances associated with the pipeline
that are currently being processed by task runners.

Deleting a pipeline cannot be undone. You cannot query or restore a
deleted pipeline. To temporarily pause a pipeline instead of deleting
it, call `set_status` with the status set to `PAUSE` on individual
components. Components that are paused by `set_status` can be resumed.

### Usage

    datapipeline_delete_pipeline(pipelineId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="datapipeline_delete_pipeline_:_pipelineId">pipelineId</code></td>
<td><p>[required] The ID of the pipeline.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_pipeline(
      pipelineId = "string"
    )
