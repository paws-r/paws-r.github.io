<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_vpc_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies attributes of a specified VPC endpoint

### Description

Modifies attributes of a specified VPC endpoint. The attributes that you
can modify depend on the type of VPC endpoint (interface, gateway, or
Gateway Load Balancer). For more information, see the [Amazon Web
Services PrivateLink
Guide](https://docs.aws.amazon.com/vpc/latest/privatelink/).

### Usage

    ec2_modify_vpc_endpoint(DryRun, VpcEndpointId, ResetPolicy,
      PolicyDocument, AddRouteTableIds, RemoveRouteTableIds, AddSubnetIds,
      RemoveSubnetIds, AddSecurityGroupIds, RemoveSecurityGroupIds,
      IpAddressType, DnsOptions, PrivateDnsEnabled)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_modify_vpc_endpoint_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_vpc_endpoint_:_VpcEndpointId">VpcEndpointId</code></td>
<td><p>[required] The ID of the endpoint.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_vpc_endpoint_:_ResetPolicy">ResetPolicy</code></td>
<td><p>(Gateway endpoint) Specify <code>true</code> to reset the policy
document to the default policy. The default policy allows full access to
the service.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_vpc_endpoint_:_PolicyDocument">PolicyDocument</code></td>
<td><p>(Interface and gateway endpoints) A policy to attach to the
endpoint that controls access to the service. The policy must be in
valid JSON format.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_vpc_endpoint_:_AddRouteTableIds">AddRouteTableIds</code></td>
<td><p>(Gateway endpoint) The IDs of the route tables to associate with
the endpoint.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_vpc_endpoint_:_RemoveRouteTableIds">RemoveRouteTableIds</code></td>
<td><p>(Gateway endpoint) The IDs of the route tables to disassociate
from the endpoint.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_vpc_endpoint_:_AddSubnetIds">AddSubnetIds</code></td>
<td><p>(Interface and Gateway Load Balancer endpoints) The IDs of the
subnets in which to serve the endpoint. For a Gateway Load Balancer
endpoint, you can specify only one subnet.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_vpc_endpoint_:_RemoveSubnetIds">RemoveSubnetIds</code></td>
<td><p>(Interface endpoint) The IDs of the subnets from which to remove
the endpoint.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_vpc_endpoint_:_AddSecurityGroupIds">AddSecurityGroupIds</code></td>
<td><p>(Interface endpoint) The IDs of the security groups to associate
with the network interface.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_vpc_endpoint_:_RemoveSecurityGroupIds">RemoveSecurityGroupIds</code></td>
<td><p>(Interface endpoint) The IDs of the security groups to
disassociate from the network interface.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_vpc_endpoint_:_IpAddressType">IpAddressType</code></td>
<td><p>The IP address type for the endpoint.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_vpc_endpoint_:_DnsOptions">DnsOptions</code></td>
<td><p>The DNS options for the endpoint.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_vpc_endpoint_:_PrivateDnsEnabled">PrivateDnsEnabled</code></td>
<td><p>(Interface endpoint) Indicates whether a private hosted zone is
associated with the VPC.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Return = TRUE|FALSE
    )

### Request syntax

    svc$modify_vpc_endpoint(
      DryRun = TRUE|FALSE,
      VpcEndpointId = "string",
      ResetPolicy = TRUE|FALSE,
      PolicyDocument = "string",
      AddRouteTableIds = list(
        "string"
      ),
      RemoveRouteTableIds = list(
        "string"
      ),
      AddSubnetIds = list(
        "string"
      ),
      RemoveSubnetIds = list(
        "string"
      ),
      AddSecurityGroupIds = list(
        "string"
      ),
      RemoveSecurityGroupIds = list(
        "string"
      ),
      IpAddressType = "ipv4"|"dualstack"|"ipv6",
      DnsOptions = list(
        DnsRecordIpType = "ipv4"|"dualstack"|"ipv6"|"service-defined",
        PrivateDnsOnlyForInboundResolverEndpoint = TRUE|FALSE
      ),
      PrivateDnsEnabled = TRUE|FALSE
    )
