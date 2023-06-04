<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_transit_gateway_vpc_attachment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the specified VPC attachment

### Description

Modifies the specified VPC attachment.

### Usage

    ec2_modify_transit_gateway_vpc_attachment(TransitGatewayAttachmentId,
      AddSubnetIds, RemoveSubnetIds, Options, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_modify_transit_gateway_vpc_attachment_:_TransitGatewayAttachmentId">TransitGatewayAttachmentId</code></td>
<td><p>[required] The ID of the attachment.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_transit_gateway_vpc_attachment_:_AddSubnetIds">AddSubnetIds</code></td>
<td><p>The IDs of one or more subnets to add. You can specify at most
one subnet per Availability Zone.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_transit_gateway_vpc_attachment_:_RemoveSubnetIds">RemoveSubnetIds</code></td>
<td><p>The IDs of one or more subnets to remove.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_transit_gateway_vpc_attachment_:_Options">Options</code></td>
<td><p>The new VPC attachment options.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_transit_gateway_vpc_attachment_:_DryRun">DryRun</code></td>
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

    svc$modify_transit_gateway_vpc_attachment(
      TransitGatewayAttachmentId = "string",
      AddSubnetIds = list(
        "string"
      ),
      RemoveSubnetIds = list(
        "string"
      ),
      Options = list(
        DnsSupport = "enable"|"disable",
        Ipv6Support = "enable"|"disable",
        ApplianceModeSupport = "enable"|"disable"
      ),
      DryRun = TRUE|FALSE
    )
