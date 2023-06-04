<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_describe_mailbox_export_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the current status of a mailbox export job

### Description

Describes the current status of a mailbox export job.

### Usage

    workmail_describe_mailbox_export_job(JobId, OrganizationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_describe_mailbox_export_job_:_JobId">JobId</code></td>
<td><p>[required] The mailbox export job ID.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_describe_mailbox_export_job_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The organization ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EntityId = "string",
      Description = "string",
      RoleArn = "string",
      KmsKeyArn = "string",
      S3BucketName = "string",
      S3Prefix = "string",
      S3Path = "string",
      EstimatedProgress = 123,
      State = "RUNNING"|"COMPLETED"|"FAILED"|"CANCELLED",
      ErrorInfo = "string",
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_mailbox_export_job(
      JobId = "string",
      OrganizationId = "string"
    )
