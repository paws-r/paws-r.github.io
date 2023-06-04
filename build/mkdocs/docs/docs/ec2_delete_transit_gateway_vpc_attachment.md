<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_transit_gateway_vpc_attachment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified VPC attachment

### Description

Deletes the specified VPC attachment.

### Usage

    ec2_delete_transit_gateway_vpc_attachment(TransitGatewayAttachmentId,
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
id="ec2_delete_transit_gateway_vpc_attachment_:_TransitGatewayAttachmentId">TransitGatewayAttachmentId</code></td>
<td><p>[required] The ID of the attachment.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_delete_transit_gateway_vpc_attachment_:_DryRun">DryRun</code></td>
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
      TransitGatewayVpcAttachment = list(
        TransitGatewayAttachmentId = "string",
        TransitGatewayId = "string",
        VpcId = "string",
        VpcOwnerId = "string",
        State = "initiating"|"initiatingRequest"|"pendingAcceptance"|"rollingBack"|"pending"|"available"|"modifying"|"deleting"|"deleted"|"failed"|"rejected"|"rejecting"|"failing",
        SubnetIds = list(
          "string"
        ),
        CreationTime = as.POSIXct(
          "2015-01-01"
        ),
        Options = list(
          DnsSupport = "enable"|"disable",
          Ipv6Support = "enable"|"disable",
          ApplianceModeSupport = "enable"|"disable"
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

    svc$delete_transit_gateway_vpc_attachment(
      TransitGatewayAttachmentId = "string",
      DryRun = TRUE|FALSE
    )
