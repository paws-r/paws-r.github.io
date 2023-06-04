<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector2_get_member</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets member information for your organization

### Description

Gets member information for your organization.

### Usage

    inspector2_get_member(accountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="inspector2_get_member_:_accountId">accountId</code></td>
<td><p>[required] The Amazon Web Services account ID of the member
account to retrieve information on.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      member = list(
        accountId = "string",
        delegatedAdminAccountId = "string",
        relationshipStatus = "CREATED"|"INVITED"|"DISABLED"|"ENABLED"|"REMOVED"|"RESIGNED"|"DELETED"|"EMAIL_VERIFICATION_IN_PROGRESS"|"EMAIL_VERIFICATION_FAILED"|"REGION_DISABLED"|"ACCOUNT_SUSPENDED"|"CANNOT_CREATE_DETECTOR_IN_ORG_MASTER",
        updatedAt = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$get_member(
      accountId = "string"
    )
