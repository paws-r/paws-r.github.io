<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_vpc_peering_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Requests a VPC peering connection between two VPCs: a requester VPC that you own and an accepter VPC with which to create the connection

### Description

Requests a VPC peering connection between two VPCs: a requester VPC that
you own and an accepter VPC with which to create the connection. The
accepter VPC can belong to another Amazon Web Services account and can
be in a different Region to the requester VPC. The requester VPC and
accepter VPC cannot have overlapping CIDR blocks.

Limitations and rules apply to a VPC peering connection. For more
information, see the
[limitations](https://docs.aws.amazon.com/vpc/latest/peering/vpc-peering-basics.html#vpc-peering-limitations)
section in the *VPC Peering Guide*.

The owner of the accepter VPC must accept the peering request to
activate the peering connection. The VPC peering connection request
expires after 7 days, after which it cannot be accepted or rejected.

If you create a VPC peering connection request between VPCs with
overlapping CIDR blocks, the VPC peering connection has a status of
`failed`.

### Usage

    ec2_create_vpc_peering_connection(DryRun, PeerOwnerId, PeerVpcId, VpcId,
      PeerRegion, TagSpecifications)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_create_vpc_peering_connection_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_vpc_peering_connection_:_PeerOwnerId">PeerOwnerId</code></td>
<td><p>The Amazon Web Services account ID of the owner of the accepter
VPC.</p>
<p>Default: Your Amazon Web Services account ID</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_vpc_peering_connection_:_PeerVpcId">PeerVpcId</code></td>
<td><p>The ID of the VPC with which you are creating the VPC peering
connection. You must specify this parameter in the request.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_vpc_peering_connection_:_VpcId">VpcId</code></td>
<td><p>[required] The ID of the requester VPC. You must specify this
parameter in the request.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_vpc_peering_connection_:_PeerRegion">PeerRegion</code></td>
<td><p>The Region code for the accepter VPC, if the accepter VPC is
located in a Region other than the Region in which you make the
request.</p>
<p>Default: The Region in which you make the request.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_vpc_peering_connection_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to assign to the peering connection.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VpcPeeringConnection = list(
        AccepterVpcInfo = list(
          CidrBlock = "string",
          Ipv6CidrBlockSet = list(
            list(
              Ipv6CidrBlock = "string"
            )
          ),
          CidrBlockSet = list(
            list(
              CidrBlock = "string"
            )
          ),
          OwnerId = "string",
          PeeringOptions = list(
            AllowDnsResolutionFromRemoteVpc = TRUE|FALSE,
            AllowEgressFromLocalClassicLinkToRemoteVpc = TRUE|FALSE,
            AllowEgressFromLocalVpcToRemoteClassicLink = TRUE|FALSE
          ),
          VpcId = "string",
          Region = "string"
        ),
        ExpirationTime = as.POSIXct(
          "2015-01-01"
        ),
        RequesterVpcInfo = list(
          CidrBlock = "string",
          Ipv6CidrBlockSet = list(
            list(
              Ipv6CidrBlock = "string"
            )
          ),
          CidrBlockSet = list(
            list(
              CidrBlock = "string"
            )
          ),
          OwnerId = "string",
          PeeringOptions = list(
            AllowDnsResolutionFromRemoteVpc = TRUE|FALSE,
            AllowEgressFromLocalClassicLinkToRemoteVpc = TRUE|FALSE,
            AllowEgressFromLocalVpcToRemoteClassicLink = TRUE|FALSE
          ),
          VpcId = "string",
          Region = "string"
        ),
        Status = list(
          Code = "initiating-request"|"pending-acceptance"|"active"|"deleted"|"rejected"|"failed"|"expired"|"provisioning"|"deleting",
          Message = "string"
        ),
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        VpcPeeringConnectionId = "string"
      )
    )

### Request syntax

    svc$create_vpc_peering_connection(
      DryRun = TRUE|FALSE,
      PeerOwnerId = "string",
      PeerVpcId = "string",
      VpcId = "string",
      PeerRegion = "string",
      TagSpecifications = list(
        list(
          ResourceType = "capacity-reservation"|"client-vpn-endpoint"|"customer-gateway"|"carrier-gateway"|"coip-pool"|"dedicated-host"|"dhcp-options"|"egress-only-internet-gateway"|"elastic-ip"|"elastic-gpu"|"export-image-task"|"export-instance-task"|"fleet"|"fpga-image"|"host-reservation"|"image"|"import-image-task"|"import-snapshot-task"|"instance"|"instance-event-window"|"internet-gateway"|"ipam"|"ipam-pool"|"ipam-scope"|"ipv4pool-ec2"|"ipv6pool-ec2"|"key-pair"|"launch-template"|"local-gateway"|"local-gateway-route-table"|"local-gateway-virtual-interface"|"local-gateway-virtual-interface-group"|"local-gateway-route-table-vpc-association"|"local-gateway-route-table-virtual-interface-group-association"|"natgateway"|"network-acl"|"network-interface"|"network-insights-analysis"|"network-insights-path"|"network-insights-access-scope"|"network-insights-access-scope-analysis"|"placement-group"|"prefix-list"|"replace-root-volume-task"|"reserved-instances"|"route-table"|"security-group"|"security-group-rule"|"snapshot"|"spot-fleet-request"|"spot-instances-request"|"subnet"|"subnet-cidr-reservation"|"traffic-mirror-filter"|"traffic-mirror-session"|"traffic-mirror-target"|"transit-gateway"|"transit-gateway-attachment"|"transit-gateway-connect-peer"|"transit-gateway-multicast-domain"|"transit-gateway-policy-table"|"transit-gateway-route-table"|"transit-gateway-route-table-announcement"|"volume"|"vpc"|"vpc-endpoint"|"vpc-endpoint-connection"|"vpc-endpoint-service"|"vpc-endpoint-service-permission"|"vpc-peering-connection"|"vpn-connection"|"vpn-gateway"|"vpc-flow-log"|"capacity-reservation-fleet"|"traffic-mirror-filter-rule"|"vpc-endpoint-connection-device-type"|"verified-access-instance"|"verified-access-group"|"verified-access-endpoint"|"verified-access-policy"|"verified-access-trust-provider"|"vpn-connection-device-type"|"vpc-block-public-access-exclusion"|"ipam-resource-discovery"|"ipam-resource-discovery-association",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      )
    )
