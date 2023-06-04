<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>braket_cancel_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels an Amazon Braket job

### Description

Cancels an Amazon Braket job.

### Usage

    braket_cancel_job(jobArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="braket_cancel_job_:_jobArn">jobArn</code></td>
<td><p>[required] The ARN of the Amazon Braket job to cancel.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      cancellationStatus = "CANCELLING"|"CANCELLED",
      jobArn = "string"
    )

### Request syntax

    svc$cancel_job(
      jobArn = "string"
    )
