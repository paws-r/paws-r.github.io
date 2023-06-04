<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_disable_ipam_organization_admin_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disable the IPAM account

### Description

Disable the IPAM account. For more information, see [Enable integration
with
Organizations](https://docs.aws.amazon.com/vpc/latest/ipam/enable-integ-ipam.html)
in the *Amazon VPC IPAM User Guide*.

### Usage

    ec2_disable_ipam_organization_admin_account(DryRun,
      DelegatedAdminAccountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_disable_ipam_organization_admin_account_:_DryRun">DryRun</code></td>
<td><p>A check for whether you have the required permissions for the
action without actually making the request and provides an error
response. If you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_disable_ipam_organization_admin_account_:_DelegatedAdminAccountId">DelegatedAdminAccountId</code></td>
<td><p>[required] The Organizations member account ID that you want to
disable as IPAM account.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Success = TRUE|FALSE
    )

### Request syntax

    svc$disable_ipam_organization_admin_account(
      DryRun = TRUE|FALSE,
      DelegatedAdminAccountId = "string"
    )
