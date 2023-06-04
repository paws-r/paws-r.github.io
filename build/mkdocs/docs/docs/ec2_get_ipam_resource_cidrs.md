<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_get_ipam_resource_cidrs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns resource CIDRs managed by IPAM in a given scope

### Description

Returns resource CIDRs managed by IPAM in a given scope. If an IPAM is
associated with more than one resource discovery, the resource CIDRs
across all of the resource discoveries is returned. A resource discovery
is an IPAM component that enables IPAM to manage and monitor resources
that belong to the owning account.

### Usage

    ec2_get_ipam_resource_cidrs(DryRun, Filters, MaxResults, NextToken,
      IpamScopeId, IpamPoolId, ResourceId, ResourceType, ResourceTag,
      ResourceOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_get_ipam_resource_cidrs_:_DryRun">DryRun</code></td>
<td><p>A check for whether you have the required permissions for the
action without actually making the request and provides an error
response. If you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_get_ipam_resource_cidrs_:_Filters">Filters</code></td>
<td><p>One or more filters for the request. For more information about
filtering, see <a
href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-filter.html">Filtering
CLI output</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_get_ipam_resource_cidrs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in the request.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_ipam_resource_cidrs_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_get_ipam_resource_cidrs_:_IpamScopeId">IpamScopeId</code></td>
<td><p>[required] The ID of the scope that the resource is in.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_ipam_resource_cidrs_:_IpamPoolId">IpamPoolId</code></td>
<td><p>The ID of the IPAM pool that the resource is in.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_get_ipam_resource_cidrs_:_ResourceId">ResourceId</code></td>
<td><p>The ID of the resource.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_ipam_resource_cidrs_:_ResourceType">ResourceType</code></td>
<td><p>The resource type.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_get_ipam_resource_cidrs_:_ResourceTag">ResourceTag</code></td>
<td><p>The resource tag.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_ipam_resource_cidrs_:_ResourceOwner">ResourceOwner</code></td>
<td><p>The ID of the Amazon Web Services account that owns the
resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      IpamResourceCidrs = list(
        list(
          IpamId = "string",
          IpamScopeId = "string",
          IpamPoolId = "string",
          ResourceRegion = "string",
          ResourceOwnerId = "string",
          ResourceId = "string",
          ResourceName = "string",
          ResourceCidr = "string",
          ResourceType = "vpc"|"subnet"|"eip"|"public-ipv4-pool"|"ipv6-pool",
          ResourceTags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          IpUsage = 123.0,
          ComplianceStatus = "compliant"|"noncompliant"|"unmanaged"|"ignored",
          ManagementState = "managed"|"unmanaged"|"ignored",
          OverlapStatus = "overlapping"|"nonoverlapping"|"ignored",
          VpcId = "string"
        )
      )
    )

### Request syntax

    svc$get_ipam_resource_cidrs(
      DryRun = TRUE|FALSE,
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string",
      IpamScopeId = "string",
      IpamPoolId = "string",
      ResourceId = "string",
      ResourceType = "vpc"|"subnet"|"eip"|"public-ipv4-pool"|"ipv6-pool",
      ResourceTag = list(
        Key = "string",
        Value = "string"
      ),
      ResourceOwner = "string"
    )
