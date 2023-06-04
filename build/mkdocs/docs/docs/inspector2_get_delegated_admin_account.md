<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector2_get_delegated_admin_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about the Amazon Inspector delegated administrator for your organization

### Description

Retrieves information about the Amazon Inspector delegated administrator
for your organization.

### Usage

    inspector2_get_delegated_admin_account()

### Value

A list with the following syntax:

    list(
      delegatedAdmin = list(
        accountId = "string",
        relationshipStatus = "CREATED"|"INVITED"|"DISABLED"|"ENABLED"|"REMOVED"|"RESIGNED"|"DELETED"|"EMAIL_VERIFICATION_IN_PROGRESS"|"EMAIL_VERIFICATION_FAILED"|"REGION_DISABLED"|"ACCOUNT_SUSPENDED"|"CANNOT_CREATE_DETECTOR_IN_ORG_MASTER"
      )
    )

### Request syntax

    svc$get_delegated_admin_account()
