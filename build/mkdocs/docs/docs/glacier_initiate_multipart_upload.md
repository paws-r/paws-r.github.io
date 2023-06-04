<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glacier_initiate_multipart_upload</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation initiates a multipart upload

### Description

This operation initiates a multipart upload. Amazon S3 Glacier creates a
multipart upload resource and returns its ID in the response. The
multipart upload ID is used in subsequent requests to upload parts of an
archive (see `upload_multipart_part`).

When you initiate a multipart upload, you specify the part size in
number of bytes. The part size must be a megabyte (1024 KB) multiplied
by a power of 2-for example, 1048576 (1 MB), 2097152 (2 MB), 4194304 (4
MB), 8388608 (8 MB), and so on. The minimum allowable part size is 1 MB,
and the maximum is 4 GB.

Every part you upload to this resource (see `upload_multipart_part`),
except the last one, must have the same size. The last one can be the
same size or smaller. For example, suppose you want to upload a 16.2 MB
file. If you initiate the multipart upload with a part size of 4 MB, you
will upload four parts of 4 MB each and one part of 0.2 MB.

You don't need to know the size of the archive when you start a
multipart upload because Amazon S3 Glacier does not require you to
specify the overall archive size.

After you complete the multipart upload, Amazon S3 Glacier (Glacier)
removes the multipart upload resource referenced by the ID. Glacier also
removes the multipart upload resource if you cancel the multipart upload
or it may be removed if there is no activity for a period of 24 hours.

An AWS account has full permission to perform all operations (actions).
However, AWS Identity and Access Management (IAM) users don't have any
permissions by default. You must grant them explicit permission to
perform specific actions. For more information, see [Access Control
Using AWS Identity and Access Management
(IAM)](https://docs.aws.amazon.com/amazonglacier/latest/dev/security-iam.html).

For conceptual information and underlying REST API, see [Uploading Large
Archives in Parts (Multipart
Upload)](https://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-archive-mpu.html)
and [Initiate Multipart
Upload](https://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-initiate-upload.html)
in the *Amazon Glacier Developer Guide*.

### Usage

    glacier_initiate_multipart_upload(accountId, vaultName,
      archiveDescription, partSize)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glacier_initiate_multipart_upload_:_accountId">accountId</code></td>
<td><p>[required] The <code>AccountId</code> value is the AWS account ID
of the account that owns the vault. You can either specify an AWS
account ID or optionally a single '<code>-</code>' (hyphen), in which
case Amazon S3 Glacier uses the AWS account ID associated with the
credentials used to sign the request. If you use an account ID, do not
include any hyphens ('-') in the ID.</p></td>
</tr>
<tr class="even">
<td><code
id="glacier_initiate_multipart_upload_:_vaultName">vaultName</code></td>
<td><p>[required] The name of the vault.</p></td>
</tr>
<tr class="odd">
<td><code
id="glacier_initiate_multipart_upload_:_archiveDescription">archiveDescription</code></td>
<td><p>The archive description that you are uploading in parts.</p>
<p>The part size must be a megabyte (1024 KB) multiplied by a power of
2, for example 1048576 (1 MB), 2097152 (2 MB), 4194304 (4 MB), 8388608
(8 MB), and so on. The minimum allowable part size is 1 MB, and the
maximum is 4 GB (4096 MB).</p></td>
</tr>
<tr class="even">
<td><code
id="glacier_initiate_multipart_upload_:_partSize">partSize</code></td>
<td><p>The size of each part except the last, in bytes. The last part
can be smaller than this part size.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      location = "string",
      uploadId = "string"
    )

### Request syntax

    svc$initiate_multipart_upload(
      accountId = "string",
      vaultName = "string",
      archiveDescription = "string",
      partSize = "string"
    )

### Examples

    ## Not run: 
    # The example initiates a multipart upload to a vault named my-vault with
    # a part size of 1 MiB (1024 x 1024 bytes) per file.
    svc$initiate_multipart_upload(
      accountId = "-",
      partSize = "1048576",
      vaultName = "my-vault"
    )

    ## End(Not run)
