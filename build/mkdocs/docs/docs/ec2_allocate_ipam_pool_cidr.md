<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_allocate_ipam_pool_cidr</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Allocate a CIDR from an IPAM pool

### Description

Allocate a CIDR from an IPAM pool. In IPAM, an allocation is a CIDR
assignment from an IPAM pool to another IPAM pool or to a resource. For
more information, see [Allocate
CIDRs](https://docs.aws.amazon.com/vpc/latest/ipam/allocate-cidrs-ipam.html)
in the *Amazon VPC IPAM User Guide*.

This action creates an allocation with strong consistency. The returned
CIDR will not overlap with any other allocations from the same pool.

### Usage

    ec2_allocate_ipam_pool_cidr(DryRun, IpamPoolId, Cidr, NetmaskLength,
      ClientToken, Description, PreviewNextCidr, DisallowedCidrs)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_allocate_ipam_pool_cidr_:_DryRun">DryRun</code></td>
<td><p>A check for whether you have the required permissions for the
action without actually making the request and provides an error
response. If you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_allocate_ipam_pool_cidr_:_IpamPoolId">IpamPoolId</code></td>
<td><p>[required] The ID of the IPAM pool from which you would like to
allocate a CIDR.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_allocate_ipam_pool_cidr_:_Cidr">Cidr</code></td>
<td><p>The CIDR you would like to allocate from the IPAM pool. Note the
following:</p>
<ul>
<li><p>If there is no DefaultNetmaskLength allocation rule set on the
pool, you must specify either the NetmaskLength or the CIDR.</p></li>
<li><p>If the DefaultNetmaskLength allocation rule is set on the pool,
you can specify either the NetmaskLength or the CIDR and the
DefaultNetmaskLength allocation rule will be ignored.</p></li>
</ul>
<p>Possible values: Any available IPv4 or IPv6 CIDR.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_allocate_ipam_pool_cidr_:_NetmaskLength">NetmaskLength</code></td>
<td><p>The netmask length of the CIDR you would like to allocate from
the IPAM pool. Note the following:</p>
<ul>
<li><p>If there is no DefaultNetmaskLength allocation rule set on the
pool, you must specify either the NetmaskLength or the CIDR.</p></li>
<li><p>If the DefaultNetmaskLength allocation rule is set on the pool,
you can specify either the NetmaskLength or the CIDR and the
DefaultNetmaskLength allocation rule will be ignored.</p></li>
</ul>
<p>Possible netmask lengths for IPv4 addresses are 0 - 32. Possible
netmask lengths for IPv6 addresses are 0 - 128.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_allocate_ipam_pool_cidr_:_ClientToken">ClientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring
Idempotency</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_allocate_ipam_pool_cidr_:_Description">Description</code></td>
<td><p>A description for the allocation.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_allocate_ipam_pool_cidr_:_PreviewNextCidr">PreviewNextCidr</code></td>
<td><p>A preview of the next available CIDR in a pool.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_allocate_ipam_pool_cidr_:_DisallowedCidrs">DisallowedCidrs</code></td>
<td><p>Exclude a particular CIDR range from being returned by the pool.
Disallowed CIDRs are only allowed if using netmask length for
allocation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IpamPoolAllocation = list(
        Cidr = "string",
        IpamPoolAllocationId = "string",
        Description = "string",
        ResourceId = "string",
        ResourceType = "ipam-pool"|"vpc"|"ec2-public-ipv4-pool"|"custom",
        ResourceRegion = "string",
        ResourceOwner = "string"
      )
    )

### Request syntax

    svc$allocate_ipam_pool_cidr(
      DryRun = TRUE|FALSE,
      IpamPoolId = "string",
      Cidr = "string",
      NetmaskLength = 123,
      ClientToken = "string",
      Description = "string",
      PreviewNextCidr = TRUE|FALSE,
      DisallowedCidrs = list(
        "string"
      )
    )
