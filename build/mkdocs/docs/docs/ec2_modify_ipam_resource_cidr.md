<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_ipam_resource_cidr</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modify a resource CIDR

### Description

Modify a resource CIDR. You can use this action to transfer resource
CIDRs between scopes and ignore resource CIDRs that you do not want to
manage. If set to false, the resource will not be tracked for overlap,
it cannot be auto-imported into a pool, and it will be removed from any
pool it has an allocation in.

For more information, see [Move resource CIDRs between
scopes](https://docs.aws.amazon.com/vpc/latest/ipam/move-resource-ipam.html)
and [Change the monitoring state of resource
CIDRs](https://docs.aws.amazon.com/vpc/latest/ipam/change-monitoring-state-ipam.html)
in the *Amazon VPC IPAM User Guide*.

### Usage

    ec2_modify_ipam_resource_cidr(DryRun, ResourceId, ResourceCidr,
      ResourceRegion, CurrentIpamScopeId, DestinationIpamScopeId, Monitored)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_modify_ipam_resource_cidr_:_DryRun">DryRun</code></td>
<td><p>A check for whether you have the required permissions for the
action without actually making the request and provides an error
response. If you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_ipam_resource_cidr_:_ResourceId">ResourceId</code></td>
<td><p>[required] The ID of the resource you want to modify.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_ipam_resource_cidr_:_ResourceCidr">ResourceCidr</code></td>
<td><p>[required] The CIDR of the resource you want to modify.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_ipam_resource_cidr_:_ResourceRegion">ResourceRegion</code></td>
<td><p>[required] The Amazon Web Services Region of the resource you
want to modify.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_ipam_resource_cidr_:_CurrentIpamScopeId">CurrentIpamScopeId</code></td>
<td><p>[required] The ID of the current scope that the resource CIDR is
in.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_ipam_resource_cidr_:_DestinationIpamScopeId">DestinationIpamScopeId</code></td>
<td><p>The ID of the scope you want to transfer the resource CIDR
to.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_ipam_resource_cidr_:_Monitored">Monitored</code></td>
<td><p>[required] Determines if the resource is monitored by IPAM. If a
resource is monitored, the resource is discovered by IPAM and you can
view details about the resource’s CIDR.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IpamResourceCidr = list(
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

### Request syntax

    svc$modify_ipam_resource_cidr(
      DryRun = TRUE|FALSE,
      ResourceId = "string",
      ResourceCidr = "string",
      ResourceRegion = "string",
      CurrentIpamScopeId = "string",
      DestinationIpamScopeId = "string",
      Monitored = TRUE|FALSE
    )
