<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutequipment_stop_inference_scheduler</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops an inference scheduler

### Description

Stops an inference scheduler.

### Usage

    lookoutequipment_stop_inference_scheduler(InferenceSchedulerName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutequipment_stop_inference_scheduler_:_InferenceSchedulerName">InferenceSchedulerName</code></td>
<td><p>[required] The name of the inference scheduler to be
stopped.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ModelArn = "string",
      ModelName = "string",
      InferenceSchedulerName = "string",
      InferenceSchedulerArn = "string",
      Status = "PENDING"|"RUNNING"|"STOPPING"|"STOPPED"
    )

### Request syntax

    svc$stop_inference_scheduler(
      InferenceSchedulerName = "string"
    )
