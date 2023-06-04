<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glacier_upload_multipart_part</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation uploads a part of an archive

### Description

This operation uploads a part of an archive. You can upload archive
parts in any order. You can also upload them in parallel. You can upload
up to 10,000 parts for a multipart upload.

Amazon Glacier rejects your upload part request if any of the following
conditions is true:

-   **SHA256 tree hash does not match**To ensure that part data is not
    corrupted in transmission, you compute a SHA256 tree hash of the
    part and include it in your request. Upon receiving the part data,
    Amazon S3 Glacier also computes a SHA256 tree hash. If these hash
    values don't match, the operation fails. For information about
    computing a SHA256 tree hash, see [Computing
    Checksums](https://docs.aws.amazon.com/amazonglacier/latest/dev/checksum-calculations.html).

-   **Part size does not match**The size of each part except the last
    must match the size specified in the corresponding
    `initiate_multipart_upload` request. The size of the last part must
    be the same size as, or smaller than, the specified size.

    If you upload a part whose size is smaller than the part size you
    specified in your initiate multipart upload request and that part is
    not the last part, then the upload part request will succeed.
    However, the subsequent Complete Multipart Upload request will fail.

-   **Range does not align**The byte range value in the request does not
    align with the part size specified in the corresponding initiate
    request. For example, if you specify a part size of 4194304 bytes (4
    MB), then 0 to 4194303 bytes (4 MB - 1) and 4194304 (4 MB) to
    8388607 (8 MB - 1) are valid part ranges. However, if you set a
    range value of 2 MB to 6 MB, the range does not align with the part
    size and the upload will fail.

This operation is idempotent. If you upload the same part multiple
times, the data included in the most recent request overwrites the
previously uploaded data.

An AWS account has full permission to perform all operations (actions).
However, AWS Identity and Access Management (IAM) users don't have any
permissions by default. You must grant them explicit permission to
perform specific actions. For more information, see [Access Control
Using AWS Identity and Access Management
(IAM)](https://docs.aws.amazon.com/amazonglacier/latest/dev/security-iam.html).

For conceptual information and underlying REST API, see [Uploading Large
Archives in Parts (Multipart
Upload)](https://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-archive-mpu.html)
and [Upload
Part](https://docs.aws.amazon.com/amazonglacier/latest/dev/api-upload-part.html)
in the *Amazon Glacier Developer Guide*.

### Usage

    glacier_upload_multipart_part(accountId, vaultName, uploadId, checksum,
      range, body)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glacier_upload_multipart_part_:_accountId">accountId</code></td>
<td><p>[required] The <code>AccountId</code> value is the AWS account ID
of the account that owns the vault. You can either specify an AWS
account ID or optionally a single '<code>-</code>' (hyphen), in which
case Amazon S3 Glacier uses the AWS account ID associated with the
credentials used to sign the request. If you use an account ID, do not
include any hyphens ('-') in the ID.</p></td>
</tr>
<tr class="even">
<td><code
id="glacier_upload_multipart_part_:_vaultName">vaultName</code></td>
<td><p>[required] The name of the vault.</p></td>
</tr>
<tr class="odd">
<td><code
id="glacier_upload_multipart_part_:_uploadId">uploadId</code></td>
<td><p>[required] The upload ID of the multipart upload.</p></td>
</tr>
<tr class="even">
<td><code
id="glacier_upload_multipart_part_:_checksum">checksum</code></td>
<td><p>The SHA256 tree hash of the data being uploaded.</p></td>
</tr>
<tr class="odd">
<td><code id="glacier_upload_multipart_part_:_range">range</code></td>
<td><p>Identifies the range of bytes in the assembled archive that will
be uploaded in this part. Amazon S3 Glacier uses this information to
assemble the archive in the proper sequence. The format of this header
follows RFC 2616. An example header is Content-Range:bytes
0-4194303/*.</p></td>
</tr>
<tr class="even">
<td><code id="glacier_upload_multipart_part_:_body">body</code></td>
<td><p>The data to upload.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      checksum = "string"
    )

### Request syntax

    svc$upload_multipart_part(
      accountId = "string",
      vaultName = "string",
      uploadId = "string",
      checksum = "string",
      range = "string",
      body = raw
    )

### Examples

    ## Not run: 
    # The example uploads the first 1 MiB (1024 x 1024 bytes) part of an
    # archive.
    svc$upload_multipart_part(
      accountId = "-",
      body = "part1",
      checksum = "c06f7cd4baacb087002a99a5f48bf953",
      range = "bytes 0-1048575/*",
      uploadId = "19gaRezEXAMPLES6Ry5YYdqthHOC_kGRCT03L9yetr220UmPtBYKk-OssZtLq...",
      vaultName = "examplevault"
    )

    ## End(Not run)
