<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_start_report_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts an on-demand report job for the specified report plan

### Description

Starts an on-demand report job for the specified report plan.

### Usage

    backup_start_report_job(ReportPlanName, IdempotencyToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_start_report_job_:_ReportPlanName">ReportPlanName</code></td>
<td><p>[required] The unique name of a report plan.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_start_report_job_:_IdempotencyToken">IdempotencyToken</code></td>
<td><p>A customer-chosen string that you can use to distinguish between
otherwise identical calls to <code>StartReportJobInput</code>. Retrying
a successful request with the same idempotency token results in a
success message with no action taken.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ReportJobId = "string"
    )

### Request syntax

    svc$start_report_job(
      ReportPlanName = "string",
      IdempotencyToken = "string"
    )
