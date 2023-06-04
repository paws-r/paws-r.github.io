<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glacier_remove_tags_from_vault</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation removes one or more tags from the set of tags attached to a vault

### Description

This operation removes one or more tags from the set of tags attached to
a vault. For more information about tags, see [Tagging Amazon S3 Glacier
Resources](https://docs.aws.amazon.com/amazonglacier/latest/dev/tagging.html).
This operation is idempotent. The operation will be successful, even if
there are no tags attached to the vault.

### Usage

    glacier_remove_tags_from_vault(accountId, vaultName, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glacier_remove_tags_from_vault_:_accountId">accountId</code></td>
<td><p>[required] The <code>AccountId</code> value is the AWS account ID
of the account that owns the vault. You can either specify an AWS
account ID or optionally a single '<code>-</code>' (hyphen), in which
case Amazon S3 Glacier uses the AWS account ID associated with the
credentials used to sign the request. If you use an account ID, do not
include any hyphens ('-') in the ID.</p></td>
</tr>
<tr class="even">
<td><code
id="glacier_remove_tags_from_vault_:_vaultName">vaultName</code></td>
<td><p>[required] The name of the vault.</p></td>
</tr>
<tr class="odd">
<td><code
id="glacier_remove_tags_from_vault_:_TagKeys">TagKeys</code></td>
<td><p>A list of tag keys. Each corresponding tag is removed from the
vault.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$remove_tags_from_vault(
      accountId = "string",
      vaultName = "string",
      TagKeys = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # The example removes two tags from the vault named examplevault.
    svc$remove_tags_from_vault(
      TagKeys = list(
        "examplekey1",
        "examplekey2"
      ),
      accountId = "-",
      vaultName = "examplevault"
    )

    ## End(Not run)
