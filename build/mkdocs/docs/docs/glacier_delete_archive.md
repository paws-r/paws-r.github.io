<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glacier_delete_archive</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation deletes an archive from a vault

### Description

This operation deletes an archive from a vault. Subsequent requests to
initiate a retrieval of this archive will fail. Archive retrievals that
are in progress for this archive ID may or may not succeed according to
the following scenarios:

-   If the archive retrieval job is actively preparing the data for
    download when Amazon S3 Glacier receives the delete archive request,
    the archival retrieval operation might fail.

-   If the archive retrieval job has successfully prepared the archive
    for download when Amazon S3 Glacier receives the delete archive
    request, you will be able to download the output.

This operation is idempotent. Attempting to delete an already-deleted
archive does not result in an error.

An AWS account has full permission to perform all operations (actions).
However, AWS Identity and Access Management (IAM) users don't have any
permissions by default. You must grant them explicit permission to
perform specific actions. For more information, see [Access Control
Using AWS Identity and Access Management
(IAM)](https://docs.aws.amazon.com/amazonglacier/latest/dev/security-iam.html).

For conceptual information and underlying REST API, see [Deleting an
Archive in Amazon
Glacier](https://docs.aws.amazon.com/amazonglacier/latest/dev/deleting-an-archive.html)
and [Delete
Archive](https://docs.aws.amazon.com/amazonglacier/latest/dev/api-archive-delete.html)
in the *Amazon Glacier Developer Guide*.

### Usage

    glacier_delete_archive(accountId, vaultName, archiveId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glacier_delete_archive_:_accountId">accountId</code></td>
<td><p>[required] The <code>AccountId</code> value is the AWS account ID
of the account that owns the vault. You can either specify an AWS
account ID or optionally a single '<code>-</code>' (hyphen), in which
case Amazon S3 Glacier uses the AWS account ID associated with the
credentials used to sign the request. If you use an account ID, do not
include any hyphens ('-') in the ID.</p></td>
</tr>
<tr class="even">
<td><code id="glacier_delete_archive_:_vaultName">vaultName</code></td>
<td><p>[required] The name of the vault.</p></td>
</tr>
<tr class="odd">
<td><code id="glacier_delete_archive_:_archiveId">archiveId</code></td>
<td><p>[required] The ID of the archive to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_archive(
      accountId = "string",
      vaultName = "string",
      archiveId = "string"
    )

### Examples

    ## Not run: 
    # The example deletes the archive specified by the archive ID.
    svc$delete_archive(
      accountId = "-",
      archiveId = "NkbByEejwEggmBz2fTHgJrg0XBoDfjP4q6iu87-TjhqG6eGoOY9Z8i1_AUyU...",
      vaultName = "examplevault"
    )

    ## End(Not run)
