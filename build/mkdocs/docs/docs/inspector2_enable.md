<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector2_enable</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables Amazon Inspector scans for one or more Amazon Web Services accounts

### Description

Enables Amazon Inspector scans for one or more Amazon Web Services
accounts.

### Usage

    inspector2_enable(accountIds, clientToken, resourceTypes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="inspector2_enable_:_accountIds">accountIds</code></td>
<td><p>A list of account IDs you want to enable Amazon Inspector scans
for.</p></td>
</tr>
<tr class="even">
<td><code id="inspector2_enable_:_clientToken">clientToken</code></td>
<td><p>The idempotency token for the request.</p></td>
</tr>
<tr class="odd">
<td><code
id="inspector2_enable_:_resourceTypes">resourceTypes</code></td>
<td><p>[required] The resource scan types you want to enable.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      accounts = list(
        list(
          accountId = "string",
          resourceStatus = list(
            ec2 = "ENABLING"|"ENABLED"|"DISABLING"|"DISABLED"|"SUSPENDING"|"SUSPENDED",
            ecr = "ENABLING"|"ENABLED"|"DISABLING"|"DISABLED"|"SUSPENDING"|"SUSPENDED",
            lambda = "ENABLING"|"ENABLED"|"DISABLING"|"DISABLED"|"SUSPENDING"|"SUSPENDED"
          ),
          status = "ENABLING"|"ENABLED"|"DISABLING"|"DISABLED"|"SUSPENDING"|"SUSPENDED"
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

    svc$enable(
      accountIds = list(
        "string"
      ),
      clientToken = "string",
      resourceTypes = list(
        "EC2"|"ECR"|"LAMBDA"
      )
    )
