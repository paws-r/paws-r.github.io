<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glacier_abort_vault_lock</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation aborts the vault locking process if the vault lock is not in the Locked state

### Description

This operation aborts the vault locking process if the vault lock is not
in the `Locked` state. If the vault lock is in the `Locked` state when
this operation is requested, the operation returns an
`AccessDeniedException` error. Aborting the vault locking process
removes the vault lock policy from the specified vault.

A vault lock is put into the `InProgress` state by calling
`initiate_vault_lock`. A vault lock is put into the `Locked` state by
calling `complete_vault_lock`. You can get the state of a vault lock by
calling `get_vault_lock`. For more information about the vault locking
process, see [Amazon Glacier Vault
Lock](https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html).
For more information about vault lock policies, see [Amazon Glacier
Access Control with Vault Lock
Policies](https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock-policy.html).

This operation is idempotent. You can successfully invoke this operation
multiple times, if the vault lock is in the `InProgress` state or if
there is no policy associated with the vault.

### Usage

    glacier_abort_vault_lock(accountId, vaultName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glacier_abort_vault_lock_:_accountId">accountId</code></td>
<td><p>[required] The <code>AccountId</code> value is the AWS account
ID. This value must match the AWS account ID associated with the
credentials used to sign the request. You can either specify an AWS
account ID or optionally a single '<code>-</code>' (hyphen), in which
case Amazon Glacier uses the AWS account ID associated with the
credentials used to sign the request. If you specify your account ID, do
not include any hyphens ('-') in the ID.</p></td>
</tr>
<tr class="even">
<td><code
id="glacier_abort_vault_lock_:_vaultName">vaultName</code></td>
<td><p>[required] The name of the vault.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$abort_vault_lock(
      accountId = "string",
      vaultName = "string"
    )

### Examples

    ## Not run: 
    # The example aborts the vault locking process if the vault lock is not in
    # the Locked state for the vault named examplevault.
    svc$abort_vault_lock(
      accountId = "-",
      vaultName = "examplevault"
    )

    ## End(Not run)
