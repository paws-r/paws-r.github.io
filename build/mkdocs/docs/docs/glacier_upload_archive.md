<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glacier_upload_archive</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation adds an archive to a vault

### Description

This operation adds an archive to a vault. This is a synchronous
operation, and for a successful upload, your data is durably persisted.
Amazon S3 Glacier returns the archive ID in the `x-amz-archive-id`
header of the response.

You must use the archive ID to access your data in Amazon S3 Glacier.
After you upload an archive, you should save the archive ID returned so
that you can retrieve or delete the archive later. Besides saving the
archive ID, you can also index it and give it a friendly name to allow
for better searching. You can also use the optional archive description
field to specify how the archive is referred to in an external index of
archives, such as you might create in Amazon DynamoDB. You can also get
the vault inventory to obtain a list of archive IDs in a vault. For more
information, see `initiate_job`.

You must provide a SHA256 tree hash of the data you are uploading. For
information about computing a SHA256 tree hash, see [Computing
Checksums](https://docs.aws.amazon.com/amazonglacier/latest/dev/checksum-calculations.html).

You can optionally specify an archive description of up to 1,024
printable ASCII characters. You can get the archive description when you
either retrieve the archive or get the vault inventory. For more
information, see `initiate_job`. Amazon Glacier does not interpret the
description in any way. An archive description does not need to be
unique. You cannot use the description to retrieve or sort the archive
list.

Archives are immutable. After you upload an archive, you cannot edit the
archive or its description.

An AWS account has full permission to perform all operations (actions).
However, AWS Identity and Access Management (IAM) users don't have any
permissions by default. You must grant them explicit permission to
perform specific actions. For more information, see [Access Control
Using AWS Identity and Access Management
(IAM)](https://docs.aws.amazon.com/amazonglacier/latest/dev/security-iam.html).

For conceptual information and underlying REST API, see [Uploading an
Archive in Amazon
Glacier](https://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-an-archive.html)
and [Upload
Archive](https://docs.aws.amazon.com/amazonglacier/latest/dev/api-archive-post.html)
in the *Amazon Glacier Developer Guide*.

### Usage

    glacier_upload_archive(vaultName, accountId, archiveDescription,
      checksum, body)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glacier_upload_archive_:_vaultName">vaultName</code></td>
<td><p>[required] The name of the vault.</p></td>
</tr>
<tr class="even">
<td><code id="glacier_upload_archive_:_accountId">accountId</code></td>
<td><p>[required] The <code>AccountId</code> value is the AWS account ID
of the account that owns the vault. You can either specify an AWS
account ID or optionally a single '<code>-</code>' (hyphen), in which
case Amazon S3 Glacier uses the AWS account ID associated with the
credentials used to sign the request. If you use an account ID, do not
include any hyphens ('-') in the ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="glacier_upload_archive_:_archiveDescription">archiveDescription</code></td>
<td><p>The optional description of the archive you are
uploading.</p></td>
</tr>
<tr class="even">
<td><code id="glacier_upload_archive_:_checksum">checksum</code></td>
<td><p>The SHA256 tree hash of the data being uploaded.</p></td>
</tr>
<tr class="odd">
<td><code id="glacier_upload_archive_:_body">body</code></td>
<td><p>The data to upload.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      location = "string",
      checksum = "string",
      archiveId = "string"
    )

### Request syntax

    svc$upload_archive(
      vaultName = "string",
      accountId = "string",
      archiveDescription = "string",
      checksum = "string",
      body = raw
    )

### Examples

    ## Not run: 
    # The example adds an archive to a vault.
    svc$upload_archive(
      accountId = "-",
      archiveDescription = "",
      body = "example-data-to-upload",
      checksum = "",
      vaultName = "my-vault"
    )

    ## End(Not run)
