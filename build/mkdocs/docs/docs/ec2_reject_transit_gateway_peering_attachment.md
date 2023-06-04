<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_reject_transit_gateway_peering_attachment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Rejects a transit gateway peering attachment request

### Description

Rejects a transit gateway peering attachment request.

### Usage

    ec2_reject_transit_gateway_peering_attachment(
      TransitGatewayAttachmentId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_reject_transit_gateway_peering_attachment_:_TransitGatewayAttachmentId">TransitGatewayAttachmentId</code></td>
<td><p>[required] The ID of the transit gateway peering
attachment.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_reject_transit_gateway_peering_attachment_:_DryRun">DryRun</code></td>
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
      TransitGatewayPeeringAttachment = list(
        TransitGatewayAttachmentId = "string",
        AccepterTransitGatewayAttachmentId = "string",
        RequesterTgwInfo = list(
          TransitGatewayId = "string",
          CoreNetworkId = "string",
          OwnerId = "string",
          Region = "string"
        ),
        AccepterTgwInfo = list(
          TransitGatewayId = "string",
          CoreNetworkId = "string",
          OwnerId = "string",
          Region = "string"
        ),
        Options = list(
          DynamicRouting = "enable"|"disable"
        ),
        Status = list(
          Code = "string",
          Message = "string"
        ),
        State = "initiating"|"initiatingRequest"|"pendingAcceptance"|"rollingBack"|"pending"|"available"|"modifying"|"deleting"|"deleted"|"failed"|"rejected"|"rejecting"|"failing",
        CreationTime = as.POSIXct(
          "2015-01-01"
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

    svc$reject_transit_gateway_peering_attachment(
      TransitGatewayAttachmentId = "string",
      DryRun = TRUE|FALSE
    )
