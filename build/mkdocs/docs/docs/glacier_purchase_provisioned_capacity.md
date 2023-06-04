<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glacier_purchase_provisioned_capacity</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation purchases a provisioned capacity unit for an AWS account

### Description

This operation purchases a provisioned capacity unit for an AWS account.

### Usage

    glacier_purchase_provisioned_capacity(accountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glacier_purchase_provisioned_capacity_:_accountId">accountId</code></td>
<td><p>[required] The AWS account ID of the account that owns the vault.
You can either specify an AWS account ID or optionally a single '-'
(hyphen), in which case Amazon S3 Glacier uses the AWS account ID
associated with the credentials used to sign the request. If you use an
account ID, don't include any hyphens ('-') in the ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      capacityId = "string"
    )

### Request syntax

    svc$purchase_provisioned_capacity(
      accountId = "string"
    )

### Examples

    ## Not run: 
    # The example purchases provisioned capacity unit for an AWS account.
    svc$purchase_provisioned_capacity(
      accountId = "-"
    )

    ## End(Not run)
