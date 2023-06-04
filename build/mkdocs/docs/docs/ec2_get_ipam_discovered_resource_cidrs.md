<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_get_ipam_discovered_resource_cidrs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the resource CIDRs that are monitored as part of a resource discovery

### Description

Returns the resource CIDRs that are monitored as part of a resource
discovery. A discovered resource is a resource CIDR monitored under a
resource discovery. The following resources can be discovered: VPCs,
Public IPv4 pools, VPC subnets, and Elastic IP addresses.

### Usage

    ec2_get_ipam_discovered_resource_cidrs(DryRun, IpamResourceDiscoveryId,
      ResourceRegion, Filters, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_get_ipam_discovered_resource_cidrs_:_DryRun">DryRun</code></td>
<td><p>A check for whether you have the required permissions for the
action without actually making the request and provides an error
response. If you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_ipam_discovered_resource_cidrs_:_IpamResourceDiscoveryId">IpamResourceDiscoveryId</code></td>
<td><p>[required] A resource discovery ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_get_ipam_discovered_resource_cidrs_:_ResourceRegion">ResourceRegion</code></td>
<td><p>[required] A resource Region.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_ipam_discovered_resource_cidrs_:_Filters">Filters</code></td>
<td><p>Filters.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_get_ipam_discovered_resource_cidrs_:_NextToken">NextToken</code></td>
<td><p>Specify the pagination token from a previous request to retrieve
the next page of results.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_ipam_discovered_resource_cidrs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of discovered resource CIDRs to return in one
page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IpamDiscoveredResourceCidrs = list(
        list(
          IpamResourceDiscoveryId = "string",
          ResourceRegion = "string",
          ResourceId = "string",
          ResourceOwnerId = "string",
          ResourceCidr = "string",
          ResourceType = "vpc"|"subnet"|"eip"|"public-ipv4-pool"|"ipv6-pool",
          ResourceTags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          IpUsage = 123.0,
          VpcId = "string",
          SampleTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_ipam_discovered_resource_cidrs(
      DryRun = TRUE|FALSE,
      IpamResourceDiscoveryId = "string",
      ResourceRegion = "string",
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
