<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>datapipeline_set_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Requests that the status of the specified physical or logical pipeline objects be updated in the specified pipeline

### Description

Requests that the status of the specified physical or logical pipeline
objects be updated in the specified pipeline. This update might not
occur immediately, but is eventually consistent. The status that can be
set depends on the type of object (for example, DataNode or Activity).
You cannot perform this operation on `FINISHED` pipelines and attempting
to do so returns `InvalidRequestException`.

### Usage

    datapipeline_set_status(pipelineId, objectIds, status)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="datapipeline_set_status_:_pipelineId">pipelineId</code></td>
<td><p>[required] The ID of the pipeline that contains the
objects.</p></td>
</tr>
<tr class="even">
<td><code id="datapipeline_set_status_:_objectIds">objectIds</code></td>
<td><p>[required] The IDs of the objects. The corresponding objects can
be either physical or components, but not a mix of both types.</p></td>
</tr>
<tr class="odd">
<td><code id="datapipeline_set_status_:_status">status</code></td>
<td><p>[required] The status to be set on all the objects specified in
<code>objectIds</code>. For components, use <code>PAUSE</code> or
<code>RESUME</code>. For instances, use <code>TRY_CANCEL</code>,
<code>RERUN</code>, or <code>MARK_FINISHED</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$set_status(
      pipelineId = "string",
      objectIds = list(
        "string"
      ),
      status = "string"
    )
