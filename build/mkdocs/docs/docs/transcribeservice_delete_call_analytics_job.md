<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>transcribeservice_delete_call_analytics_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a Call Analytics job

### Description

Deletes a Call Analytics job. To use this operation, specify the name of
the job you want to delete using `CallAnalyticsJobName`. Job names are
case sensitive.

### Usage

    transcribeservice_delete_call_analytics_job(CallAnalyticsJobName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="transcribeservice_delete_call_analytics_job_:_CallAnalyticsJobName">CallAnalyticsJobName</code></td>
<td><p>[required] The name of the Call Analytics job you want to delete.
Job names are case sensitive.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_call_analytics_job(
      CallAnalyticsJobName = "string"
    )
