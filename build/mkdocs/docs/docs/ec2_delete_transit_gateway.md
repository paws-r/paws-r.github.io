<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_transit_gateway</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified transit gateway

### Description

Deletes the specified transit gateway.

### Usage

    ec2_delete_transit_gateway(TransitGatewayId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_delete_transit_gateway_:_TransitGatewayId">TransitGatewayId</code></td>
<td><p>[required] The ID of the transit gateway.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_delete_transit_gateway_:_DryRun">DryRun</code></td>
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

    svc$delete_transit_gateway(
      TransitGatewayId = "string",
      DryRun = TRUE|FALSE
    )
