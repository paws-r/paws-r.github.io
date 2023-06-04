<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glacier_initiate_vault_lock</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation initiates the vault locking process by doing the following:

### Description

This operation initiates the vault locking process by doing the
following:

-   Installing a vault lock policy on the specified vault.

-   Setting the lock state of vault lock to `InProgress`.

-   Returning a lock ID, which is used to complete the vault locking
    process.

You can set one vault lock policy for each vault and this policy can be
up to 20 KB in size. For more information about vault lock policies, see
[Amazon Glacier Access Control with Vault Lock
Policies](https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock-policy.html).

You must complete the vault locking process within 24 hours after the
vault lock enters the `InProgress` state. After the 24 hour window ends,
the lock ID expires, the vault automatically exits the `InProgress`
state, and the vault lock policy is removed from the vault. You call
`complete_vault_lock` to complete the vault locking process by setting
the state of the vault lock to `Locked`.

After a vault lock is in the `Locked` state, you cannot initiate a new
vault lock for the vault.

You can abort the vault locking process by calling `abort_vault_lock`.
You can get the state of the vault lock by calling `get_vault_lock`. For
more information about the vault locking process, [Amazon Glacier Vault
Lock](https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html).

If this operation is called when the vault lock is in the `InProgress`
state, the operation returns an `AccessDeniedException` error. When the
vault lock is in the `InProgress` state you must call `abort_vault_lock`
before you can initiate a new vault lock policy.

### Usage

    glacier_initiate_vault_lock(accountId, vaultName, policy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glacier_initiate_vault_lock_:_accountId">accountId</code></td>
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
id="glacier_initiate_vault_lock_:_vaultName">vaultName</code></td>
<td><p>[required] The name of the vault.</p></td>
</tr>
<tr class="odd">
<td><code id="glacier_initiate_vault_lock_:_policy">policy</code></td>
<td><p>The vault lock policy as a JSON string, which uses "\" as an
escape character.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      lockId = "string"
    )

### Request syntax

    svc$initiate_vault_lock(
      accountId = "string",
      vaultName = "string",
      policy = list(
        Policy = "string"
      )
    )

### Examples

    ## Not run: 
    # The example initiates the vault locking process for the vault named
    # my-vault.
    svc$initiate_vault_lock(
      accountId = "-",
      policy = list(
        Policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"Define-vault-loc..."
      ),
      vaultName = "my-vault"
    )

    ## End(Not run)
