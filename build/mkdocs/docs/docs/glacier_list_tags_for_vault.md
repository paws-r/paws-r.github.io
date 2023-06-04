<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glacier_list_tags_for_vault</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation lists all the tags attached to a vault

### Description

This operation lists all the tags attached to a vault. The operation
returns an empty map if there are no tags. For more information about
tags, see [Tagging Amazon S3 Glacier
Resources](https://docs.aws.amazon.com/amazonglacier/latest/dev/tagging.html).

### Usage

    glacier_list_tags_for_vault(accountId, vaultName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glacier_list_tags_for_vault_:_accountId">accountId</code></td>
<td><p>[required] The <code>AccountId</code> value is the AWS account ID
of the account that owns the vault. You can either specify an AWS
account ID or optionally a single '<code>-</code>' (hyphen), in which
case Amazon S3 Glacier uses the AWS account ID associated with the
credentials used to sign the request. If you use an account ID, do not
include any hyphens ('-') in the ID.</p></td>
</tr>
<tr class="even">
<td><code
id="glacier_list_tags_for_vault_:_vaultName">vaultName</code></td>
<td><p>[required] The name of the vault.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Tags = list(
        "string"
      )
    )

### Request syntax

    svc$list_tags_for_vault(
      accountId = "string",
      vaultName = "string"
    )

### Examples

    ## Not run: 
    # The example lists all the tags attached to the vault examplevault.
    svc$list_tags_for_vault(
      accountId = "-",
      vaultName = "examplevault"
    )

    ## End(Not run)
