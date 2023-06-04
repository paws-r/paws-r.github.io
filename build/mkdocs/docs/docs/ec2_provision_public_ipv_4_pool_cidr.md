<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_provision_public_ipv_4_pool_cidr</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provision a CIDR to a public IPv4 pool

### Description

Provision a CIDR to a public IPv4 pool.

For more information about IPAM, see [What is
IPAM?](https://docs.aws.amazon.com/vpc/latest/ipam/) in the *Amazon VPC
IPAM User Guide*.

### Usage

    ec2_provision_public_ipv_4_pool_cidr(DryRun, IpamPoolId, PoolId,
      NetmaskLength)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_provision_public_ipv_4_pool_cidr_:_DryRun">DryRun</code></td>
<td><p>A check for whether you have the required permissions for the
action without actually making the request and provides an error
response. If you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_provision_public_ipv_4_pool_cidr_:_IpamPoolId">IpamPoolId</code></td>
<td><p>[required] The ID of the IPAM pool you would like to use to
allocate this CIDR.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_provision_public_ipv_4_pool_cidr_:_PoolId">PoolId</code></td>
<td><p>[required] The ID of the public IPv4 pool you would like to use
for this CIDR.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_provision_public_ipv_4_pool_cidr_:_NetmaskLength">NetmaskLength</code></td>
<td><p>[required] The netmask length of the CIDR you would like to
allocate to the public IPv4 pool.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PoolId = "string",
      PoolAddressRange = list(
        FirstAddress = "string",
        LastAddress = "string",
        AddressCount = 123,
        AvailableAddressCount = 123
      )
    )

### Request syntax

    svc$provision_public_ipv_4_pool_cidr(
      DryRun = TRUE|FALSE,
      IpamPoolId = "string",
      PoolId = "string",
      NetmaskLength = 123
    )
