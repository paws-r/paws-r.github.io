<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glacier_delete_vault_access_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation deletes the access policy associated with the specified vault

### Description

This operation deletes the access policy associated with the specified
vault. The operation is eventually consistent; that is, it might take
some time for Amazon S3 Glacier to completely remove the access policy,
and you might still see the effect of the policy for a short time after
you send the delete request.

This operation is idempotent. You can invoke delete multiple times, even
if there is no policy associated with the vault. For more information
about vault access policies, see [Amazon Glacier Access Control with
Vault Access
Policies](https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-access-policy.html).

### Usage

    glacier_delete_vault_access_policy(accountId, vaultName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glacier_delete_vault_access_policy_:_accountId">accountId</code></td>
<td><p>[required] The <code>AccountId</code> value is the AWS account ID
of the account that owns the vault. You can either specify an AWS
account ID or optionally a single '<code>-</code>' (hyphen), in which
case Amazon S3 Glacier uses the AWS account ID associated with the
credentials used to sign the request. If you use an account ID, do not
include any hyphens ('-') in the ID.</p></td>
</tr>
<tr class="even">
<td><code
id="glacier_delete_vault_access_policy_:_vaultName">vaultName</code></td>
<td><p>[required] The name of the vault.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_vault_access_policy(
      accountId = "string",
      vaultName = "string"
    )

### Examples

    ## Not run: 
    # The example deletes the access policy associated with the vault named
    # examplevault.
    svc$delete_vault_access_policy(
      accountId = "-",
      vaultName = "examplevault"
    )

    ## End(Not run)
