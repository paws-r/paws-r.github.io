<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glacier_complete_multipart_upload</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## You call this operation to inform Amazon S3 Glacier (Glacier) that all the archive parts have been uploaded and that Glacier can now assemble the archive from the uploaded parts

### Description

You call this operation to inform Amazon S3 Glacier (Glacier) that all
the archive parts have been uploaded and that Glacier can now assemble
the archive from the uploaded parts. After assembling and saving the
archive to the vault, Glacier returns the URI path of the newly created
archive resource. Using the URI path, you can then access the archive.
After you upload an archive, you should save the archive ID returned to
retrieve the archive at a later point. You can also get the vault
inventory to obtain a list of archive IDs in a vault. For more
information, see `initiate_job`.

In the request, you must include the computed SHA256 tree hash of the
entire archive you have uploaded. For information about computing a
SHA256 tree hash, see [Computing
Checksums](https://docs.aws.amazon.com/amazonglacier/latest/dev/checksum-calculations.html).
On the server side, Glacier also constructs the SHA256 tree hash of the
assembled archive. If the values match, Glacier saves the archive to the
vault; otherwise, it returns an error, and the operation fails. The
`list_parts` operation returns a list of parts uploaded for a specific
multipart upload. It includes checksum information for each uploaded
part that can be used to debug a bad checksum issue.

Additionally, Glacier also checks for any missing content ranges when
assembling the archive, if missing content ranges are found, Glacier
returns an error and the operation fails.

Complete Multipart Upload is an idempotent operation. After your first
successful complete multipart upload, if you call the operation again
within a short period, the operation will succeed and return the same
archive ID. This is useful in the event you experience a network issue
that causes an aborted connection or receive a 500 server error, in
which case you can repeat your Complete Multipart Upload request and get
the same archive ID without creating duplicate archives. Note, however,
that after the multipart upload completes, you cannot call the List
Parts operation and the multipart upload will not appear in List
Multipart Uploads response, even if idempotent complete is possible.

An AWS account has full permission to perform all operations (actions).
However, AWS Identity and Access Management (IAM) users don't have any
permissions by default. You must grant them explicit permission to
perform specific actions. For more information, see [Access Control
Using AWS Identity and Access Management
(IAM)](https://docs.aws.amazon.com/amazonglacier/latest/dev/security-iam.html).

For conceptual information and underlying REST API, see [Uploading Large
Archives in Parts (Multipart
Upload)](https://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-archive-mpu.html)
and [Complete Multipart
Upload](https://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-complete-upload.html)
in the *Amazon Glacier Developer Guide*.

### Usage

    glacier_complete_multipart_upload(accountId, vaultName, uploadId,
      archiveSize, checksum)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glacier_complete_multipart_upload_:_accountId">accountId</code></td>
<td><p>[required] The <code>AccountId</code> value is the AWS account ID
of the account that owns the vault. You can either specify an AWS
account ID or optionally a single '<code>-</code>' (hyphen), in which
case Amazon S3 Glacier uses the AWS account ID associated with the
credentials used to sign the request. If you use an account ID, do not
include any hyphens ('-') in the ID.</p></td>
</tr>
<tr class="even">
<td><code
id="glacier_complete_multipart_upload_:_vaultName">vaultName</code></td>
<td><p>[required] The name of the vault.</p></td>
</tr>
<tr class="odd">
<td><code
id="glacier_complete_multipart_upload_:_uploadId">uploadId</code></td>
<td><p>[required] The upload ID of the multipart upload.</p></td>
</tr>
<tr class="even">
<td><code
id="glacier_complete_multipart_upload_:_archiveSize">archiveSize</code></td>
<td><p>The total size, in bytes, of the entire archive. This value
should be the sum of all the sizes of the individual parts that you
uploaded.</p></td>
</tr>
<tr class="odd">
<td><code
id="glacier_complete_multipart_upload_:_checksum">checksum</code></td>
<td><p>The SHA256 tree hash of the entire archive. It is the tree hash
of SHA256 tree hash of the individual parts. If the value you specify in
the request does not match the SHA256 tree hash of the final assembled
archive as computed by Amazon S3 Glacier (Glacier), Glacier returns an
error and the request fails.</p></td>
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

    svc$complete_multipart_upload(
      accountId = "string",
      vaultName = "string",
      uploadId = "string",
      archiveSize = "string",
      checksum = "string"
    )

### Examples

    ## Not run: 
    # The example completes a multipart upload for a 3 MiB archive.
    svc$complete_multipart_upload(
      accountId = "-",
      archiveSize = "3145728",
      checksum = "9628195fcdbcbbe76cdde456d4646fa7de5f219fb39823836d81f0cc0e18aa67",
      uploadId = "19gaRezEXAMPLES6Ry5YYdqthHOC_kGRCT03L9yetr220UmPtBYKk-OssZtLq...",
      vaultName = "my-vault"
    )

    ## End(Not run)
