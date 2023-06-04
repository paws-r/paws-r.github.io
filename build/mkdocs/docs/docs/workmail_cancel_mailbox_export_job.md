<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_cancel_mailbox_export_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels a mailbox export job

### Description

Cancels a mailbox export job.

If the mailbox export job is near completion, it might not be possible
to cancel it.

### Usage

    workmail_cancel_mailbox_export_job(ClientToken, JobId, OrganizationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_cancel_mailbox_export_job_:_ClientToken">ClientToken</code></td>
<td><p>[required] The idempotency token for the client request.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_cancel_mailbox_export_job_:_JobId">JobId</code></td>
<td><p>[required] The job ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_cancel_mailbox_export_job_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The organization ID.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$cancel_mailbox_export_job(
      ClientToken = "string",
      JobId = "string",
      OrganizationId = "string"
    )
