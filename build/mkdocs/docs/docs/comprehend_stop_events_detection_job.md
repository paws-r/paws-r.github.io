<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_stop_events_detection_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops an events detection job in progress

### Description

Stops an events detection job in progress.

### Usage

    comprehend_stop_events_detection_job(JobId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehend_stop_events_detection_job_:_JobId">JobId</code></td>
<td><p>[required] The identifier of the events detection job to
stop.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobId = "string",
      JobStatus = "SUBMITTED"|"IN_PROGRESS"|"COMPLETED"|"FAILED"|"STOP_REQUESTED"|"STOPPED"
    )

### Request syntax

    svc$stop_events_detection_job(
      JobId = "string"
    )
