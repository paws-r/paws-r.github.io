<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_get_ipam_pool_allocations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get a list of all the CIDR allocations in an IPAM pool

### Description

Get a list of all the CIDR allocations in an IPAM pool.

If you use this action after `allocate_ipam_pool_cidr` or
`release_ipam_pool_allocation`, note that all EC2 API actions follow an
[eventual
consistency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/query-api-troubleshooting.html#eventual-consistency)
model.

### Usage

    ec2_get_ipam_pool_allocations(DryRun, IpamPoolId, IpamPoolAllocationId,
      Filters, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_get_ipam_pool_allocations_:_DryRun">DryRun</code></td>
<td><p>A check for whether you have the required permissions for the
action without actually making the request and provides an error
response. If you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_ipam_pool_allocations_:_IpamPoolId">IpamPoolId</code></td>
<td><p>[required] The ID of the IPAM pool you want to see the
allocations for.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_get_ipam_pool_allocations_:_IpamPoolAllocationId">IpamPoolAllocationId</code></td>
<td><p>The ID of the allocation.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_ipam_pool_allocations_:_Filters">Filters</code></td>
<td><p>One or more filters for the request. For more information about
filtering, see <a
href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-filter.html">Filtering
CLI output</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_get_ipam_pool_allocations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results you would like returned per
page.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_ipam_pool_allocations_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IpamPoolAllocations = list(
        list(
          Cidr = "string",
          IpamPoolAllocationId = "string",
          Description = "string",
          ResourceId = "string",
          ResourceType = "ipam-pool"|"vpc"|"ec2-public-ipv4-pool"|"custom",
          ResourceRegion = "string",
          ResourceOwner = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_ipam_pool_allocations(
      DryRun = TRUE|FALSE,
      IpamPoolId = "string",
      IpamPoolAllocationId = "string",
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )
