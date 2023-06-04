<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutequipment_delete_inference_scheduler</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an inference scheduler that has been set up

### Description

Deletes an inference scheduler that has been set up. Already processed
output results are not affected.

### Usage

    lookoutequipment_delete_inference_scheduler(InferenceSchedulerName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutequipment_delete_inference_scheduler_:_InferenceSchedulerName">InferenceSchedulerName</code></td>
<td><p>[required] The name of the inference scheduler to be
deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_inference_scheduler(
      InferenceSchedulerName = "string"
    )
