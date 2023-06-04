<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector2_batch_get_account_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the Amazon Inspector status of multiple Amazon Web Services accounts within your environment

### Description

Retrieves the Amazon Inspector status of multiple Amazon Web Services
accounts within your environment.

### Usage

    inspector2_batch_get_account_status(accountIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector2_batch_get_account_status_:_accountIds">accountIds</code></td>
<td><p>The 12-digit Amazon Web Services account IDs of the accounts to
retrieve Amazon Inspector status for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      accounts = list(
        list(
          accountId = "string",
          resourceState = list(
            ec2 = list(
              errorCode = "ALREADY_ENABLED"|"ENABLE_IN_PROGRESS"|"DISABLE_IN_PROGRESS"|"SUSPEND_IN_PROGRESS"|"RESOURCE_NOT_FOUND"|"ACCESS_DENIED"|"INTERNAL_ERROR"|"SSM_UNAVAILABLE"|"SSM_THROTTLED"|"EVENTBRIDGE_UNAVAILABLE"|"EVENTBRIDGE_THROTTLED"|"RESOURCE_SCAN_NOT_DISABLED"|"DISASSOCIATE_ALL_MEMBERS"|"ACCOUNT_IS_ISOLATED",
              errorMessage = "string",
              status = "ENABLING"|"ENABLED"|"DISABLING"|"DISABLED"|"SUSPENDING"|"SUSPENDED"
            ),
            ecr = list(
              errorCode = "ALREADY_ENABLED"|"ENABLE_IN_PROGRESS"|"DISABLE_IN_PROGRESS"|"SUSPEND_IN_PROGRESS"|"RESOURCE_NOT_FOUND"|"ACCESS_DENIED"|"INTERNAL_ERROR"|"SSM_UNAVAILABLE"|"SSM_THROTTLED"|"EVENTBRIDGE_UNAVAILABLE"|"EVENTBRIDGE_THROTTLED"|"RESOURCE_SCAN_NOT_DISABLED"|"DISASSOCIATE_ALL_MEMBERS"|"ACCOUNT_IS_ISOLATED",
              errorMessage = "string",
              status = "ENABLING"|"ENABLED"|"DISABLING"|"DISABLED"|"SUSPENDING"|"SUSPENDED"
            ),
            lambda = list(
              errorCode = "ALREADY_ENABLED"|"ENABLE_IN_PROGRESS"|"DISABLE_IN_PROGRESS"|"SUSPEND_IN_PROGRESS"|"RESOURCE_NOT_FOUND"|"ACCESS_DENIED"|"INTERNAL_ERROR"|"SSM_UNAVAILABLE"|"SSM_THROTTLED"|"EVENTBRIDGE_UNAVAILABLE"|"EVENTBRIDGE_THROTTLED"|"RESOURCE_SCAN_NOT_DISABLED"|"DISASSOCIATE_ALL_MEMBERS"|"ACCOUNT_IS_ISOLATED",
              errorMessage = "string",
              status = "ENABLING"|"ENABLED"|"DISABLING"|"DISABLED"|"SUSPENDING"|"SUSPENDED"
            )
          ),
          state = list(
            errorCode = "ALREADY_ENABLED"|"ENABLE_IN_PROGRESS"|"DISABLE_IN_PROGRESS"|"SUSPEND_IN_PROGRESS"|"RESOURCE_NOT_FOUND"|"ACCESS_DENIED"|"INTERNAL_ERROR"|"SSM_UNAVAILABLE"|"SSM_THROTTLED"|"EVENTBRIDGE_UNAVAILABLE"|"EVENTBRIDGE_THROTTLED"|"RESOURCE_SCAN_NOT_DISABLED"|"DISASSOCIATE_ALL_MEMBERS"|"ACCOUNT_IS_ISOLATED",
            errorMessage = "string",
            status = "ENABLING"|"ENABLED"|"DISABLING"|"DISABLED"|"SUSPENDING"|"SUSPENDED"
          )
        )
      ),
      failedAccounts = list(
        list(
          accountId = "string",
          errorCode = "ALREADY_ENABLED"|"ENABLE_IN_PROGRESS"|"DISABLE_IN_PROGRESS"|"SUSPEND_IN_PROGRESS"|"RESOURCE_NOT_FOUND"|"ACCESS_DENIED"|"INTERNAL_ERROR"|"SSM_UNAVAILABLE"|"SSM_THROTTLED"|"EVENTBRIDGE_UNAVAILABLE"|"EVENTBRIDGE_THROTTLED"|"RESOURCE_SCAN_NOT_DISABLED"|"DISASSOCIATE_ALL_MEMBERS"|"ACCOUNT_IS_ISOLATED",
          errorMessage = "string",
          resourceStatus = list(
            ec2 = "ENABLING"|"ENABLED"|"DISABLING"|"DISABLED"|"SUSPENDING"|"SUSPENDED",
            ecr = "ENABLING"|"ENABLED"|"DISABLING"|"DISABLED"|"SUSPENDING"|"SUSPENDED",
            lambda = "ENABLING"|"ENABLED"|"DISABLING"|"DISABLED"|"SUSPENDING"|"SUSPENDED"
          ),
          status = "ENABLING"|"ENABLED"|"DISABLING"|"DISABLED"|"SUSPENDING"|"SUSPENDED"
        )
      )
    )

### Request syntax

    svc$batch_get_account_status(
      accountIds = list(
        "string"
      )
    )
