<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_release_ipam_pool_allocation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Release an allocation within an IPAM pool

### Description

Release an allocation within an IPAM pool. You can only use this action
to release manual allocations. To remove an allocation for a resource
without deleting the resource, set its monitored state to false using
`modify_ipam_resource_cidr`. For more information, see [Release an
allocation](https://docs.aws.amazon.com/vpc/latest/ipam/) in the *Amazon
VPC IPAM User Guide*.

All EC2 API actions follow an [eventual
consistency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/query-api-troubleshooting.html#eventual-consistency)
model.

### Usage

    ec2_release_ipam_pool_allocation(DryRun, IpamPoolId, Cidr,
      IpamPoolAllocationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_release_ipam_pool_allocation_:_DryRun">DryRun</code></td>
<td><p>A check for whether you have the required permissions for the
action without actually making the request and provides an error
response. If you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_release_ipam_pool_allocation_:_IpamPoolId">IpamPoolId</code></td>
<td><p>[required] The ID of the IPAM pool which contains the allocation
you want to release.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_release_ipam_pool_allocation_:_Cidr">Cidr</code></td>
<td><p>[required] The CIDR of the allocation you want to
release.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_release_ipam_pool_allocation_:_IpamPoolAllocationId">IpamPoolAllocationId</code></td>
<td><p>[required] The ID of the allocation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Success = TRUE|FALSE
    )

### Request syntax

    svc$release_ipam_pool_allocation(
      DryRun = TRUE|FALSE,
      IpamPoolId = "string",
      Cidr = "string",
      IpamPoolAllocationId = "string"
    )
