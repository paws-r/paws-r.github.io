<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_deprovision_public_ipv_4_pool_cidr</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deprovision a CIDR from a public IPv4 pool

### Description

Deprovision a CIDR from a public IPv4 pool.

### Usage

    ec2_deprovision_public_ipv_4_pool_cidr(DryRun, PoolId, Cidr)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_deprovision_public_ipv_4_pool_cidr_:_DryRun">DryRun</code></td>
<td><p>A check for whether you have the required permissions for the
action without actually making the request and provides an error
response. If you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_deprovision_public_ipv_4_pool_cidr_:_PoolId">PoolId</code></td>
<td><p>[required] The ID of the pool that you want to deprovision the
CIDR from.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_deprovision_public_ipv_4_pool_cidr_:_Cidr">Cidr</code></td>
<td><p>[required] The CIDR you want to deprovision from the pool. Enter
the CIDR you want to deprovision with a netmask of <code
style="white-space: pre;">⁠/32⁠</code>. You must rerun this command for
each IP address in the CIDR range. If your CIDR is a <code
style="white-space: pre;">⁠/24⁠</code>, you will have to run this command
to deprovision each of the 256 IP addresses in the <code
style="white-space: pre;">⁠/24⁠</code> CIDR.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PoolId = "string",
      DeprovisionedAddresses = list(
        "string"
      )
    )

### Request syntax

    svc$deprovision_public_ipv_4_pool_cidr(
      DryRun = TRUE|FALSE,
      PoolId = "string",
      Cidr = "string"
    )
