<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glacier_list_multipart_uploads</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation lists in-progress multipart uploads for the specified vault

### Description

This operation lists in-progress multipart uploads for the specified
vault. An in-progress multipart upload is a multipart upload that has
been initiated by an `initiate_multipart_upload` request, but has not
yet been completed or aborted. The list returned in the List Multipart
Upload response has no guaranteed order.

The List Multipart Uploads operation supports pagination. By default,
this operation returns up to 50 multipart uploads in the response. You
should always check the response for a `marker` at which to continue the
list; if there are no more items the `marker` is `null`. To return a
list of multipart uploads that begins at a specific upload, set the
`marker` request parameter to the value you obtained from a previous
List Multipart Upload request. You can also limit the number of uploads
returned in the response by specifying the `limit` parameter in the
request.

Note the difference between this operation and listing parts
(`list_parts`). The List Multipart Uploads operation lists all multipart
uploads for a vault and does not require a multipart upload ID. The List
Parts operation requires a multipart upload ID since parts are
associated with a single upload.

An AWS account has full permission to perform all operations (actions).
However, AWS Identity and Access Management (IAM) users don't have any
permissions by default. You must grant them explicit permission to
perform specific actions. For more information, see [Access Control
Using AWS Identity and Access Management
(IAM)](https://docs.aws.amazon.com/amazonglacier/latest/dev/security-iam.html).

For conceptual information and the underlying REST API, see [Working
with Archives in Amazon S3
Glacier](https://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html)
and [List Multipart
Uploads](https://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-list-uploads.html)
in the *Amazon Glacier Developer Guide*.

### Usage

    glacier_list_multipart_uploads(accountId, vaultName, marker, limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glacier_list_multipart_uploads_:_accountId">accountId</code></td>
<td><p>[required] The <code>AccountId</code> value is the AWS account ID
of the account that owns the vault. You can either specify an AWS
account ID or optionally a single '<code>-</code>' (hyphen), in which
case Amazon S3 Glacier uses the AWS account ID associated with the
credentials used to sign the request. If you use an account ID, do not
include any hyphens ('-') in the ID.</p></td>
</tr>
<tr class="even">
<td><code
id="glacier_list_multipart_uploads_:_vaultName">vaultName</code></td>
<td><p>[required] The name of the vault.</p></td>
</tr>
<tr class="odd">
<td><code
id="glacier_list_multipart_uploads_:_marker">marker</code></td>
<td><p>An opaque string used for pagination. This value specifies the
upload at which the listing of uploads should begin. Get the marker
value from a previous List Uploads response. You need only include the
marker if you are continuing the pagination of results started in a
previous List Uploads request.</p></td>
</tr>
<tr class="even">
<td><code id="glacier_list_multipart_uploads_:_limit">limit</code></td>
<td><p>Specifies the maximum number of uploads returned in the response
body. If this value is not specified, the List Uploads operation returns
up to 50 uploads.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UploadsList = list(
        list(
          MultipartUploadId = "string",
          VaultARN = "string",
          ArchiveDescription = "string",
          PartSizeInBytes = 123,
          CreationDate = "string"
        )
      ),
      Marker = "string"
    )

### Request syntax

    svc$list_multipart_uploads(
      accountId = "string",
      vaultName = "string",
      marker = "string",
      limit = "string"
    )

### Examples

    ## Not run: 
    # The example lists all the in-progress multipart uploads for the vault
    # named examplevault.
    svc$list_multipart_uploads(
      accountId = "-",
      vaultName = "examplevault"
    )

    ## End(Not run)
