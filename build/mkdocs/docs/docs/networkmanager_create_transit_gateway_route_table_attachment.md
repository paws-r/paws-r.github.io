<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_create_transit_gateway_route_table_attachment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a transit gateway route table attachment

### Description

Creates a transit gateway route table attachment.

### Usage

    networkmanager_create_transit_gateway_route_table_attachment(PeeringId,
      TransitGatewayRouteTableArn, Tags, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_create_transit_gateway_route_table_attachment_:_PeeringId">PeeringId</code></td>
<td><p>[required] The ID of the peer for the</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_create_transit_gateway_route_table_attachment_:_TransitGatewayRouteTableArn">TransitGatewayRouteTableArn</code></td>
<td><p>[required] The ARN of the transit gateway route table for the
attachment request. For example,
<code>"TransitGatewayRouteTableArn": "arn:aws:ec2:us-west-2:123456789012:transit-gateway-route-table/tgw-rtb-9876543210123456"</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_create_transit_gateway_route_table_attachment_:_Tags">Tags</code></td>
<td><p>The list of key-value tags associated with the request.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_create_transit_gateway_route_table_attachment_:_ClientToken">ClientToken</code></td>
<td><p>The client token associated with the request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TransitGatewayRouteTableAttachment = list(
        Attachment = list(
          CoreNetworkId = "string",
          CoreNetworkArn = "string",
          AttachmentId = "string",
          OwnerAccountId = "string",
          AttachmentType = "CONNECT"|"SITE_TO_SITE_VPN"|"VPC"|"TRANSIT_GATEWAY_ROUTE_TABLE",
          State = "REJECTED"|"PENDING_ATTACHMENT_ACCEPTANCE"|"CREATING"|"FAILED"|"AVAILABLE"|"UPDATING"|"PENDING_NETWORK_UPDATE"|"PENDING_TAG_ACCEPTANCE"|"DELETING",
          EdgeLocation = "string",
          ResourceArn = "string",
          AttachmentPolicyRuleNumber = 123,
          SegmentName = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          ProposedSegmentChange = list(
            Tags = list(
              list(
                Key = "string",
                Value = "string"
              )
            ),
            AttachmentPolicyRuleNumber = 123,
            SegmentName = "string"
          ),
          CreatedAt = as.POSIXct(
            "2015-01-01"
          ),
          UpdatedAt = as.POSIXct(
            "2015-01-01"
          )
        ),
        PeeringId = "string",
        TransitGatewayRouteTableArn = "string"
      )
    )

### Request syntax

    svc$create_transit_gateway_route_table_attachment(
      PeeringId = "string",
      TransitGatewayRouteTableArn = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      ClientToken = "string"
    )
