<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_modify_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the configuration of Bring Your Own License (BYOL) for the specified account

### Description

Modifies the configuration of Bring Your Own License (BYOL) for the
specified account.

### Usage

    workspaces_modify_account(DedicatedTenancySupport,
      DedicatedTenancyManagementCidrRange)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_modify_account_:_DedicatedTenancySupport">DedicatedTenancySupport</code></td>
<td><p>The status of BYOL.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_modify_account_:_DedicatedTenancyManagementCidrRange">DedicatedTenancyManagementCidrRange</code></td>
<td><p>The IP address range, specified as an IPv4 CIDR block, for the
management network interface. Specify an IP address range that is
compatible with your network and in CIDR notation (that is, specify the
range as an IPv4 CIDR block). The CIDR block size must be /16 (for
example, 203.0.113.25/16). It must also be specified as available by the
<code>list_available_management_cidr_ranges</code> operation.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$modify_account(
      DedicatedTenancySupport = "ENABLED",
      DedicatedTenancyManagementCidrRange = "string"
    )
