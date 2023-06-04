<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glacier_list_parts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation lists the parts of an archive that have been uploaded in a specific multipart upload

### Description

This operation lists the parts of an archive that have been uploaded in
a specific multipart upload. You can make this request at any time
during an in-progress multipart upload before you complete the upload
(see `complete_multipart_upload`. List Parts returns an error for
completed uploads. The list returned in the List Parts response is
sorted by part range.

The List Parts operation supports pagination. By default, this operation
returns up to 50 uploaded parts in the response. You should always check
the response for a `marker` at which to continue the list; if there are
no more items the `marker` is `null`. To return a list of parts that
begins at a specific part, set the `marker` request parameter to the
value you obtained from a previous List Parts request. You can also
limit the number of parts returned in the response by specifying the
`limit` parameter in the request.

An AWS account has full permission to perform all operations (actions).
However, AWS Identity and Access Management (IAM) users don't have any
permissions by default. You must grant them explicit permission to
perform specific actions. For more information, see [Access Control
Using AWS Identity and Access Management
(IAM)](https://docs.aws.amazon.com/amazonglacier/latest/dev/security-iam.html).

For conceptual information and the underlying REST API, see [Working
with Archives in Amazon S3
Glacier](https://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html)
and [List
Parts](https://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-list-parts.html)
in the *Amazon Glacier Developer Guide*.

### Usage

    glacier_list_parts(accountId, vaultName, uploadId, marker, limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glacier_list_parts_:_accountId">accountId</code></td>
<td><p>[required] The <code>AccountId</code> value is the AWS account ID
of the account that owns the vault. You can either specify an AWS
account ID or optionally a single '<code>-</code>' (hyphen), in which
case Amazon S3 Glacier uses the AWS account ID associated with the
credentials used to sign the request. If you use an account ID, do not
include any hyphens ('-') in the ID.</p></td>
</tr>
<tr class="even">
<td><code id="glacier_list_parts_:_vaultName">vaultName</code></td>
<td><p>[required] The name of the vault.</p></td>
</tr>
<tr class="odd">
<td><code id="glacier_list_parts_:_uploadId">uploadId</code></td>
<td><p>[required] The upload ID of the multipart upload.</p></td>
</tr>
<tr class="even">
<td><code id="glacier_list_parts_:_marker">marker</code></td>
<td><p>An opaque string used for pagination. This value specifies the
part at which the listing of parts should begin. Get the marker value
from the response of a previous List Parts response. You need only
include the marker if you are continuing the pagination of results
started in a previous List Parts request.</p></td>
</tr>
<tr class="odd">
<td><code id="glacier_list_parts_:_limit">limit</code></td>
<td><p>The maximum number of parts to be returned. The default limit is
50. The number of parts returned might be fewer than the specified
limit, but the number of returned parts never exceeds the
limit.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MultipartUploadId = "string",
      VaultARN = "string",
      ArchiveDescription = "string",
      PartSizeInBytes = 123,
      CreationDate = "string",
      Parts = list(
        list(
          RangeInBytes = "string",
          SHA256TreeHash = "string"
        )
      ),
      Marker = "string"
    )

### Request syntax

    svc$list_parts(
      accountId = "string",
      vaultName = "string",
      uploadId = "string",
      marker = "string",
      limit = "string"
    )

### Examples

    ## Not run: 
    # The example lists all the parts of a multipart upload.
    svc$list_parts(
      accountId = "-",
      uploadId = "OW2fM5iVylEpFEMM9_HpKowRapC3vn5sSL39_396UW9zLFUWVrnRHaPjUJddQ...",
      vaultName = "examplevault"
    )

    ## End(Not run)
