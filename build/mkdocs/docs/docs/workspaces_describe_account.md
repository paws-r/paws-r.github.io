<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_describe_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list that describes the configuration of Bring Your Own License (BYOL) for the specified account

### Description

Retrieves a list that describes the configuration of Bring Your Own
License (BYOL) for the specified account.

### Usage

    workspaces_describe_account()

### Value

A list with the following syntax:

    list(
      DedicatedTenancySupport = "ENABLED"|"DISABLED",
      DedicatedTenancyManagementCidrRange = "string"
    )

### Request syntax

    svc$describe_account()
