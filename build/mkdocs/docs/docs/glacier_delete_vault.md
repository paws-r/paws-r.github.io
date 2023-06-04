<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glacier_delete_vault</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation deletes a vault

### Description

This operation deletes a vault. Amazon S3 Glacier will delete a vault
only if there are no archives in the vault as of the last inventory and
there have been no writes to the vault since the last inventory. If
either of these conditions is not satisfied, the vault deletion fails
(that is, the vault is not removed) and Amazon S3 Glacier returns an
error. You can use `describe_vault` to return the number of archives in
a vault, and you can use [Initiate a Job (POST
jobs)](https://docs.aws.amazon.com/amazonglacier/latest/dev/api-initiate-job-post.html)
to initiate a new inventory retrieval for a vault. The inventory
contains the archive IDs you use to delete archives using [Delete
Archive (DELETE
archive)](https://docs.aws.amazon.com/amazonglacier/latest/dev/api-archive-delete.html).

This operation is idempotent.

An AWS account has full permission to perform all operations (actions).
However, AWS Identity and Access Management (IAM) users don't have any
permissions by default. You must grant them explicit permission to
perform specific actions. For more information, see [Access Control
Using AWS Identity and Access Management
(IAM)](https://docs.aws.amazon.com/amazonglacier/latest/dev/security-iam.html).

For conceptual information and underlying REST API, see [Deleting a
Vault in Amazon
Glacier](https://docs.aws.amazon.com/amazonglacier/latest/dev/deleting-vaults.html)
and [Delete
Vault](https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-delete.html)
in the *Amazon S3 Glacier Developer Guide*.

### Usage

    glacier_delete_vault(accountId, vaultName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glacier_delete_vault_:_accountId">accountId</code></td>
<td><p>[required] The <code>AccountId</code> value is the AWS account ID
of the account that owns the vault. You can either specify an AWS
account ID or optionally a single '<code>-</code>' (hyphen), in which
case Amazon S3 Glacier uses the AWS account ID associated with the
credentials used to sign the request. If you use an account ID, do not
include any hyphens ('-') in the ID.</p></td>
</tr>
<tr class="even">
<td><code id="glacier_delete_vault_:_vaultName">vaultName</code></td>
<td><p>[required] The name of the vault.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_vault(
      accountId = "string",
      vaultName = "string"
    )

### Examples

    ## Not run: 
    # The example deletes a vault named my-vault:
    svc$delete_vault(
      accountId = "-",
      vaultName = "my-vault"
    )

    ## End(Not run)
