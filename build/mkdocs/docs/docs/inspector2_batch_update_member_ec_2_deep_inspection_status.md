<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector2_batch_update_member_ec_2_deep_inspection_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Activates or deactivates Amazon Inspector deep inspection for the provided member accounts in your organization

### Description

Activates or deactivates Amazon Inspector deep inspection for the
provided member accounts in your organization. You must be the delegated
administrator of an organization in Amazon Inspector to use this API.

### Usage

    inspector2_batch_update_member_ec_2_deep_inspection_status(accountIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector2_batch_update_member_ec_2_deep_inspection_status_:_accountIds">accountIds</code></td>
<td><p>[required] The unique identifiers for the Amazon Web Services
accounts to change Amazon Inspector deep inspection status for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      accountIds = list(
        list(
          accountId = "string",
          errorMessage = "string",
          status = "ACTIVATED"|"DEACTIVATED"|"PENDING"|"FAILED"
        )
      ),
      failedAccountIds = list(
        list(
          accountId = "string",
          ec2ScanStatus = "ENABLING"|"ENABLED"|"DISABLING"|"DISABLED"|"SUSPENDING"|"SUSPENDED",
          errorMessage = "string"
        )
      )
    )

### Request syntax

    svc$batch_update_member_ec_2_deep_inspection_status(
      accountIds = list(
        list(
          accountId = "string",
          activateDeepInspection = TRUE|FALSE
        )
      )
    )
