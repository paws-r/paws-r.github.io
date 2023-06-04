<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glacier_get_vault_access_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation retrieves the access-policy subresource set on the vault; for more information on setting this subresource, see Set Vault Access Policy (PUT access-policy)

### Description

This operation retrieves the `access-policy` subresource set on the
vault; for more information on setting this subresource, see [Set Vault
Access Policy (PUT
access-policy)](https://docs.aws.amazon.com/amazonglacier/latest/dev/api-SetVaultAccessPolicy.html).
If there is no access policy set on the vault, the operation returns a
`⁠404 Not found⁠` error. For more information about vault access policies,
see [Amazon Glacier Access Control with Vault Access
Policies](https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-access-policy.html).

### Usage

    glacier_get_vault_access_policy(accountId, vaultName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glacier_get_vault_access_policy_:_accountId">accountId</code></td>
<td><p>[required] The <code>AccountId</code> value is the AWS account ID
of the account that owns the vault. You can either specify an AWS
account ID or optionally a single '<code>-</code>' (hyphen), in which
case Amazon S3 Glacier uses the AWS account ID associated with the
credentials used to sign the request. If you use an account ID, do not
include any hyphens ('-') in the ID.</p></td>
</tr>
<tr class="even">
<td><code
id="glacier_get_vault_access_policy_:_vaultName">vaultName</code></td>
<td><p>[required] The name of the vault.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      policy = list(
        Policy = "string"
      )
    )

### Request syntax

    svc$get_vault_access_policy(
      accountId = "string",
      vaultName = "string"
    )

### Examples

    ## Not run: 
    # The example retrieves the access-policy set on the vault named
    # example-vault.
    svc$get_vault_access_policy(
      accountId = "-",
      vaultName = "example-vault"
    )

    ## End(Not run)
