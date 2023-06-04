<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_describe_account_modifications</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list that describes modifications to the configuration of Bring Your Own License (BYOL) for the specified account

### Description

Retrieves a list that describes modifications to the configuration of
Bring Your Own License (BYOL) for the specified account.

### Usage

    workspaces_describe_account_modifications(NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_describe_account_modifications_:_NextToken">NextToken</code></td>
<td><p>If you received a <code>NextToken</code> from a previous call
that was paginated, provide this token to receive the next set of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AccountModifications = list(
        list(
          ModificationState = "PENDING"|"COMPLETED"|"FAILED",
          DedicatedTenancySupport = "ENABLED"|"DISABLED",
          DedicatedTenancyManagementCidrRange = "string",
          StartTime = as.POSIXct(
            "2015-01-01"
          ),
          ErrorCode = "string",
          ErrorMessage = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_account_modifications(
      NextToken = "string"
    )
