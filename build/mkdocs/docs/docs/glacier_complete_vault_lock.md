<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glacier_complete_vault_lock</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation completes the vault locking process by transitioning the vault lock from the InProgress state to the Locked state, which causes the vault lock policy to become unchangeable

### Description

This operation completes the vault locking process by transitioning the
vault lock from the `InProgress` state to the `Locked` state, which
causes the vault lock policy to become unchangeable. A vault lock is put
into the `InProgress` state by calling `initiate_vault_lock`. You can
obtain the state of the vault lock by calling `get_vault_lock`. For more
information about the vault locking process, [Amazon Glacier Vault
Lock](https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html).

This operation is idempotent. This request is always successful if the
vault lock is in the `Locked` state and the provided lock ID matches the
lock ID originally used to lock the vault.

If an invalid lock ID is passed in the request when the vault lock is in
the `Locked` state, the operation returns an `AccessDeniedException`
error. If an invalid lock ID is passed in the request when the vault
lock is in the `InProgress` state, the operation throws an
`InvalidParameter` error.

### Usage

    glacier_complete_vault_lock(accountId, vaultName, lockId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glacier_complete_vault_lock_:_accountId">accountId</code></td>
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
id="glacier_complete_vault_lock_:_vaultName">vaultName</code></td>
<td><p>[required] The name of the vault.</p></td>
</tr>
<tr class="odd">
<td><code id="glacier_complete_vault_lock_:_lockId">lockId</code></td>
<td><p>[required] The <code>lockId</code> value is the lock ID obtained
from a <code>initiate_vault_lock</code> request.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$complete_vault_lock(
      accountId = "string",
      vaultName = "string",
      lockId = "string"
    )

### Examples

    ## Not run: 
    # The example completes the vault locking process by transitioning the
    # vault lock from the InProgress state to the Locked state.
    svc$complete_vault_lock(
      accountId = "-",
      lockId = "AE863rKkWZU53SLW5be4DUcW",
      vaultName = "example-vault"
    )

    ## End(Not run)
