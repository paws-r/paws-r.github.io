<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glacier_set_vault_access_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation configures an access policy for a vault and will overwrite an existing policy

### Description

This operation configures an access policy for a vault and will
overwrite an existing policy. To configure a vault access policy, send a
PUT request to the `access-policy` subresource of the vault. An access
policy is specific to a vault and is also called a vault subresource.
You can set one access policy per vault and the policy can be up to 20
KB in size. For more information about vault access policies, see
[Amazon Glacier Access Control with Vault Access
Policies](https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-access-policy.html).

### Usage

    glacier_set_vault_access_policy(accountId, vaultName, policy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glacier_set_vault_access_policy_:_accountId">accountId</code></td>
<td><p>[required] The <code>AccountId</code> value is the AWS account ID
of the account that owns the vault. You can either specify an AWS
account ID or optionally a single '<code>-</code>' (hyphen), in which
case Amazon S3 Glacier uses the AWS account ID associated with the
credentials used to sign the request. If you use an account ID, do not
include any hyphens ('-') in the ID.</p></td>
</tr>
<tr class="even">
<td><code
id="glacier_set_vault_access_policy_:_vaultName">vaultName</code></td>
<td><p>[required] The name of the vault.</p></td>
</tr>
<tr class="odd">
<td><code
id="glacier_set_vault_access_policy_:_policy">policy</code></td>
<td><p>The vault access policy as a JSON string.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$set_vault_access_policy(
      accountId = "string",
      vaultName = "string",
      policy = list(
        Policy = "string"
      )
    )

### Examples

    ## Not run: 
    # The example configures an access policy for the vault named
    # examplevault.
    svc$set_vault_access_policy(
      accountId = "-",
      policy = list(
        Policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"Define-owner-acc..."
      ),
      vaultName = "examplevault"
    )

    ## End(Not run)
