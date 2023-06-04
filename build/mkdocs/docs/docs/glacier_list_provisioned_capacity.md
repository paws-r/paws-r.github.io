<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glacier_list_provisioned_capacity</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation lists the provisioned capacity units for the specified AWS account

### Description

This operation lists the provisioned capacity units for the specified
AWS account.

### Usage

    glacier_list_provisioned_capacity(accountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glacier_list_provisioned_capacity_:_accountId">accountId</code></td>
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
      ProvisionedCapacityList = list(
        list(
          CapacityId = "string",
          StartDate = "string",
          ExpirationDate = "string"
        )
      )
    )

### Request syntax

    svc$list_provisioned_capacity(
      accountId = "string"
    )

### Examples

    ## Not run: 
    # The example lists the provisioned capacity units for an account.
    svc$list_provisioned_capacity(
      accountId = "-"
    )

    ## End(Not run)
