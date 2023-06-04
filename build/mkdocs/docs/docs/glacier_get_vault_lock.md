<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glacier_get_vault_lock</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation retrieves the following attributes from the lock-policy subresource set on the specified vault:

### Description

This operation retrieves the following attributes from the `lock-policy`
subresource set on the specified vault:

-   The vault lock policy set on the vault.

-   The state of the vault lock, which is either `InProgess` or
    `Locked`.

-   When the lock ID expires. The lock ID is used to complete the vault
    locking process.

-   When the vault lock was initiated and put into the `InProgress`
    state.

A vault lock is put into the `InProgress` state by calling
`initiate_vault_lock`. A vault lock is put into the `Locked` state by
calling `complete_vault_lock`. You can abort the vault locking process
by calling `abort_vault_lock`. For more information about the vault
locking process, [Amazon Glacier Vault
Lock](https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html).

If there is no vault lock policy set on the vault, the operation returns
a `⁠404 Not found⁠` error. For more information about vault lock policies,
[Amazon Glacier Access Control with Vault Lock
Policies](https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock-policy.html).

### Usage

    glacier_get_vault_lock(accountId, vaultName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glacier_get_vault_lock_:_accountId">accountId</code></td>
<td><p>[required] The <code>AccountId</code> value is the AWS account ID
of the account that owns the vault. You can either specify an AWS
account ID or optionally a single '<code>-</code>' (hyphen), in which
case Amazon S3 Glacier uses the AWS account ID associated with the
credentials used to sign the request. If you use an account ID, do not
include any hyphens ('-') in the ID.</p></td>
</tr>
<tr class="even">
<td><code id="glacier_get_vault_lock_:_vaultName">vaultName</code></td>
<td><p>[required] The name of the vault.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Policy = "string",
      State = "string",
      ExpirationDate = "string",
      CreationDate = "string"
    )

### Request syntax

    svc$get_vault_lock(
      accountId = "string",
      vaultName = "string"
    )

### Examples

    ## Not run: 
    # The example retrieves the attributes from the lock-policy subresource
    # set on the vault named examplevault.
    svc$get_vault_lock(
      accountId = "-",
      vaultName = "examplevault"
    )

    ## End(Not run)
