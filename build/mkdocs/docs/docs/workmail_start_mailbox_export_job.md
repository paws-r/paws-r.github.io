<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_start_mailbox_export_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a mailbox export job to export MIME-format email messages and calendar items from the specified mailbox to the specified Amazon Simple Storage Service (Amazon S3) bucket

### Description

Starts a mailbox export job to export MIME-format email messages and
calendar items from the specified mailbox to the specified Amazon Simple
Storage Service (Amazon S3) bucket. For more information, see [Exporting
mailbox
content](https://docs.aws.amazon.com/workmail/latest/adminguide/mail-export.html)
in the *WorkMail Administrator Guide*.

### Usage

    workmail_start_mailbox_export_job(ClientToken, OrganizationId, EntityId,
      Description, RoleArn, KmsKeyArn, S3BucketName, S3Prefix)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_start_mailbox_export_job_:_ClientToken">ClientToken</code></td>
<td><p>[required] The idempotency token for the client request.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_start_mailbox_export_job_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The identifier associated with the
organization.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_start_mailbox_export_job_:_EntityId">EntityId</code></td>
<td><p>[required] The identifier of the user or resource associated with
the mailbox.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_start_mailbox_export_job_:_Description">Description</code></td>
<td><p>The mailbox export job description.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_start_mailbox_export_job_:_RoleArn">RoleArn</code></td>
<td><p>[required] The ARN of the AWS Identity and Access Management
(IAM) role that grants write permission to the S3 bucket.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_start_mailbox_export_job_:_KmsKeyArn">KmsKeyArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the symmetric AWS
Key Management Service (AWS KMS) key that encrypts the exported mailbox
content.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_start_mailbox_export_job_:_S3BucketName">S3BucketName</code></td>
<td><p>[required] The name of the S3 bucket.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_start_mailbox_export_job_:_S3Prefix">S3Prefix</code></td>
<td><p>[required] The S3 bucket prefix.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobId = "string"
    )

### Request syntax

    svc$start_mailbox_export_job(
      ClientToken = "string",
      OrganizationId = "string",
      EntityId = "string",
      Description = "string",
      RoleArn = "string",
      KmsKeyArn = "string",
      S3BucketName = "string",
      S3Prefix = "string"
    )
