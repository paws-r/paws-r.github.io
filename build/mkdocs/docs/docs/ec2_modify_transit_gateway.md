<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_transit_gateway</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the specified transit gateway

### Description

Modifies the specified transit gateway. When you modify a transit
gateway, the modified options are applied to new transit gateway
attachments only. Your existing transit gateway attachments are not
modified.

### Usage

    ec2_modify_transit_gateway(TransitGatewayId, Description, Options,
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
id="ec2_modify_transit_gateway_:_TransitGatewayId">TransitGatewayId</code></td>
<td><p>[required] The ID of the transit gateway.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_transit_gateway_:_Description">Description</code></td>
<td><p>The description for the transit gateway.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_modify_transit_gateway_:_Options">Options</code></td>
<td><p>The options to modify.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_modify_transit_gateway_:_DryRun">DryRun</code></td>
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
      TransitGateway = list(
        TransitGatewayId = "string",
        TransitGatewayArn = "string",
        State = "pending"|"available"|"modifying"|"deleting"|"deleted",
        OwnerId = "string",
        Description = "string",
        CreationTime = as.POSIXct(
          "2015-01-01"
        ),
        Options = list(
          AmazonSideAsn = 123,
          TransitGatewayCidrBlocks = list(
            "string"
          ),
          AutoAcceptSharedAttachments = "enable"|"disable",
          DefaultRouteTableAssociation = "enable"|"disable",
          AssociationDefaultRouteTableId = "string",
          DefaultRouteTablePropagation = "enable"|"disable",
          PropagationDefaultRouteTableId = "string",
          VpnEcmpSupport = "enable"|"disable",
          DnsSupport = "enable"|"disable",
          MulticastSupport = "enable"|"disable"
        ),
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$modify_transit_gateway(
      TransitGatewayId = "string",
      Description = "string",
      Options = list(
        AddTransitGatewayCidrBlocks = list(
          "string"
        ),
        RemoveTransitGatewayCidrBlocks = list(
          "string"
        ),
        VpnEcmpSupport = "enable"|"disable",
        DnsSupport = "enable"|"disable",
        AutoAcceptSharedAttachments = "enable"|"disable",
        DefaultRouteTableAssociation = "enable"|"disable",
        AssociationDefaultRouteTableId = "string",
        DefaultRouteTablePropagation = "enable"|"disable",
        PropagationDefaultRouteTableId = "string",
        AmazonSideAsn = 123
      ),
      DryRun = TRUE|FALSE
    )
