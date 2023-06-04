<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_reject_transit_gateway_multicast_domain_associations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Rejects a request to associate cross-account subnets with a transit gateway multicast domain

### Description

Rejects a request to associate cross-account subnets with a transit
gateway multicast domain.

### Usage

    ec2_reject_transit_gateway_multicast_domain_associations(
      TransitGatewayMulticastDomainId, TransitGatewayAttachmentId, SubnetIds,
      DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_reject_transit_gateway_multicast_domain_associations_:_TransitGatewayMulticastDomainId">TransitGatewayMulticastDomainId</code></td>
<td><p>The ID of the transit gateway multicast domain.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_reject_transit_gateway_multicast_domain_associations_:_TransitGatewayAttachmentId">TransitGatewayAttachmentId</code></td>
<td><p>The ID of the transit gateway attachment.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_reject_transit_gateway_multicast_domain_associations_:_SubnetIds">SubnetIds</code></td>
<td><p>The IDs of the subnets to associate with the transit gateway
multicast domain.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_reject_transit_gateway_multicast_domain_associations_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Associations = list(
        TransitGatewayMulticastDomainId = "string",
        TransitGatewayAttachmentId = "string",
        ResourceId = "string",
        ResourceType = "vpc"|"vpn"|"direct-connect-gateway"|"connect"|"peering"|"tgw-peering",
        ResourceOwnerId = "string",
        Subnets = list(
          list(
            SubnetId = "string",
            State = "pendingAcceptance"|"associating"|"associated"|"disassociating"|"disassociated"|"rejected"|"failed"
          )
        )
      )
    )

### Request syntax

    svc$reject_transit_gateway_multicast_domain_associations(
      TransitGatewayMulticastDomainId = "string",
      TransitGatewayAttachmentId = "string",
      SubnetIds = list(
        "string"
      ),
      DryRun = TRUE|FALSE
    )
