<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_associate_transit_gateway_multicast_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates the specified subnets and transit gateway attachments with the specified transit gateway multicast domain

### Description

Associates the specified subnets and transit gateway attachments with
the specified transit gateway multicast domain.

The transit gateway attachment must be in the available state before you
can add a resource. Use `describe_transit_gateway_attachments` to see
the state of the attachment.

### Usage

    ec2_associate_transit_gateway_multicast_domain(
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
id="ec2_associate_transit_gateway_multicast_domain_:_TransitGatewayMulticastDomainId">TransitGatewayMulticastDomainId</code></td>
<td><p>[required] The ID of the transit gateway multicast
domain.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_associate_transit_gateway_multicast_domain_:_TransitGatewayAttachmentId">TransitGatewayAttachmentId</code></td>
<td><p>[required] The ID of the transit gateway attachment to associate
with the transit gateway multicast domain.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_associate_transit_gateway_multicast_domain_:_SubnetIds">SubnetIds</code></td>
<td><p>[required] The IDs of the subnets to associate with the transit
gateway multicast domain.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_associate_transit_gateway_multicast_domain_:_DryRun">DryRun</code></td>
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

    svc$associate_transit_gateway_multicast_domain(
      TransitGatewayMulticastDomainId = "string",
      TransitGatewayAttachmentId = "string",
      SubnetIds = list(
        "string"
      ),
      DryRun = TRUE|FALSE
    )
