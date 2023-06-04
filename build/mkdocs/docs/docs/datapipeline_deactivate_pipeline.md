<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>datapipeline_deactivate_pipeline</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deactivates the specified running pipeline

### Description

Deactivates the specified running pipeline. The pipeline is set to the
`DEACTIVATING` state until the deactivation process completes.

To resume a deactivated pipeline, use `activate_pipeline`. By default,
the pipeline resumes from the last completed execution. Optionally, you
can specify the date and time to resume the pipeline.

### Usage

    datapipeline_deactivate_pipeline(pipelineId, cancelActive)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="datapipeline_deactivate_pipeline_:_pipelineId">pipelineId</code></td>
<td><p>[required] The ID of the pipeline.</p></td>
</tr>
<tr class="even">
<td><code
id="datapipeline_deactivate_pipeline_:_cancelActive">cancelActive</code></td>
<td><p>Indicates whether to cancel any running objects. The default is
true, which sets the state of any running objects to
<code>CANCELED</code>. If this value is false, the pipeline is
deactivated after all running objects finish.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$deactivate_pipeline(
      pipelineId = "string",
      cancelActive = TRUE|FALSE
    )
