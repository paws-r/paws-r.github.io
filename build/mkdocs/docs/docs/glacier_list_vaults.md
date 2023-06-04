<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glacier_list_vaults</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation lists all vaults owned by the calling user's account

### Description

This operation lists all vaults owned by the calling user's account. The
list returned in the response is ASCII-sorted by vault name.

By default, this operation returns up to 10 items. If there are more
vaults to list, the response `marker` field contains the vault Amazon
Resource Name (ARN) at which to continue the list with a new List Vaults
request; otherwise, the `marker` field is `null`. To return a list of
vaults that begins at a specific vault, set the `marker` request
parameter to the vault ARN you obtained from a previous List Vaults
request. You can also limit the number of vaults returned in the
response by specifying the `limit` parameter in the request.

An AWS account has full permission to perform all operations (actions).
However, AWS Identity and Access Management (IAM) users don't have any
permissions by default. You must grant them explicit permission to
perform specific actions. For more information, see [Access Control
Using AWS Identity and Access Management
(IAM)](https://docs.aws.amazon.com/amazonglacier/latest/dev/security-iam.html).

For conceptual information and underlying REST API, see [Retrieving
Vault Metadata in Amazon S3
Glacier](https://docs.aws.amazon.com/amazonglacier/latest/dev/retrieving-vault-info.html)
and [List
Vaults](https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vaults-get.html)
in the *Amazon Glacier Developer Guide*.

### Usage

    glacier_list_vaults(accountId, marker, limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glacier_list_vaults_:_accountId">accountId</code></td>
<td><p>[required] The <code>AccountId</code> value is the AWS account
ID. This value must match the AWS account ID associated with the
credentials used to sign the request. You can either specify an AWS
account ID or optionally a single '<code>-</code>' (hyphen), in which
case Amazon Glacier uses the AWS account ID associated with the
credentials used to sign the request. If you specify your account ID, do
not include any hyphens ('-') in the ID.</p></td>
</tr>
<tr class="even">
<td><code id="glacier_list_vaults_:_marker">marker</code></td>
<td><p>A string used for pagination. The marker specifies the vault ARN
after which the listing of vaults should begin.</p></td>
</tr>
<tr class="odd">
<td><code id="glacier_list_vaults_:_limit">limit</code></td>
<td><p>The maximum number of vaults to be returned. The default limit is
10. The number of vaults returned might be fewer than the specified
limit, but the number of returned vaults never exceeds the
limit.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VaultList = list(
        list(
          VaultARN = "string",
          VaultName = "string",
          CreationDate = "string",
          LastInventoryDate = "string",
          NumberOfArchives = 123,
          SizeInBytes = 123
        )
      ),
      Marker = "string"
    )

### Request syntax

    svc$list_vaults(
      accountId = "string",
      marker = "string",
      limit = "string"
    )

### Examples

    ## Not run: 
    # The example lists all vaults owned by the specified AWS account.
    svc$list_vaults(
      accountId = "-",
      limit = "",
      marker = ""
    )

    ## End(Not run)
