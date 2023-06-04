<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glacier_add_tags_to_vault</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation adds the specified tags to a vault

### Description

This operation adds the specified tags to a vault. Each tag is composed
of a key and a value. Each vault can have up to 10 tags. If your request
would cause the tag limit for the vault to be exceeded, the operation
throws the `LimitExceededException` error. If a tag already exists on
the vault under a specified key, the existing key value will be
overwritten. For more information about tags, see [Tagging Amazon S3
Glacier
Resources](https://docs.aws.amazon.com/amazonglacier/latest/dev/tagging.html).

### Usage

    glacier_add_tags_to_vault(accountId, vaultName, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glacier_add_tags_to_vault_:_accountId">accountId</code></td>
<td><p>[required] The <code>AccountId</code> value is the AWS account ID
of the account that owns the vault. You can either specify an AWS
account ID or optionally a single '<code>-</code>' (hyphen), in which
case Amazon S3 Glacier uses the AWS account ID associated with the
credentials used to sign the request. If you use an account ID, do not
include any hyphens ('-') in the ID.</p></td>
</tr>
<tr class="even">
<td><code
id="glacier_add_tags_to_vault_:_vaultName">vaultName</code></td>
<td><p>[required] The name of the vault.</p></td>
</tr>
<tr class="odd">
<td><code id="glacier_add_tags_to_vault_:_Tags">Tags</code></td>
<td><p>The tags to add to the vault. Each tag is composed of a key and a
value. The value can be an empty string.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$add_tags_to_vault(
      accountId = "string",
      vaultName = "string",
      Tags = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # The example adds two tags to a my-vault.
    svc$add_tags_to_vault(
      Tags = list(
        examplekey1 = "examplevalue1",
        examplekey2 = "examplevalue2"
      ),
      accountId = "-",
      vaultName = "my-vault"
    )

    ## End(Not run)
