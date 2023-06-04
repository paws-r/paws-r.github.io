<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glacier_describe_vault</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation returns information about a vault, including the vault's Amazon Resource Name (ARN), the date the vault was created, the number of archives it contains, and the total size of all the archives in the vault

### Description

This operation returns information about a vault, including the vault's
Amazon Resource Name (ARN), the date the vault was created, the number
of archives it contains, and the total size of all the archives in the
vault. The number of archives and their total size are as of the last
inventory generation. This means that if you add or remove an archive
from a vault, and then immediately use Describe Vault, the change in
contents will not be immediately reflected. If you want to retrieve the
latest inventory of the vault, use `initiate_job`. Amazon S3 Glacier
generates vault inventories approximately daily. For more information,
see [Downloading a Vault Inventory in Amazon S3
Glacier](https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-inventory.html).

An AWS account has full permission to perform all operations (actions).
However, AWS Identity and Access Management (IAM) users don't have any
permissions by default. You must grant them explicit permission to
perform specific actions. For more information, see [Access Control
Using AWS Identity and Access Management
(IAM)](https://docs.aws.amazon.com/amazonglacier/latest/dev/security-iam.html).

For conceptual information and underlying REST API, see [Retrieving
Vault Metadata in Amazon S3
Glacier](https://docs.aws.amazon.com/amazonglacier/latest/dev/retrieving-vault-info.html)
and [Describe
Vault](https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-get.html)
in the *Amazon Glacier Developer Guide*.

### Usage

    glacier_describe_vault(accountId, vaultName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glacier_describe_vault_:_accountId">accountId</code></td>
<td><p>[required] The <code>AccountId</code> value is the AWS account ID
of the account that owns the vault. You can either specify an AWS
account ID or optionally a single '<code>-</code>' (hyphen), in which
case Amazon S3 Glacier uses the AWS account ID associated with the
credentials used to sign the request. If you use an account ID, do not
include any hyphens ('-') in the ID.</p></td>
</tr>
<tr class="even">
<td><code id="glacier_describe_vault_:_vaultName">vaultName</code></td>
<td><p>[required] The name of the vault.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VaultARN = "string",
      VaultName = "string",
      CreationDate = "string",
      LastInventoryDate = "string",
      NumberOfArchives = 123,
      SizeInBytes = 123
    )

### Request syntax

    svc$describe_vault(
      accountId = "string",
      vaultName = "string"
    )

### Examples

    ## Not run: 
    # The example retrieves data about a vault named my-vault.
    svc$describe_vault(
      accountId = "-",
      vaultName = "my-vault"
    )

    ## End(Not run)
