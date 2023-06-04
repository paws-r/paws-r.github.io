<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_create_vpc_attachment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a VPC attachment on an edge location of a core network

### Description

Creates a VPC attachment on an edge location of a core network.

### Usage

    networkmanager_create_vpc_attachment(CoreNetworkId, VpcArn, SubnetArns,
      Options, Tags, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_create_vpc_attachment_:_CoreNetworkId">CoreNetworkId</code></td>
<td><p>[required] The ID of a core network for the VPC
attachment.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_create_vpc_attachment_:_VpcArn">VpcArn</code></td>
<td><p>[required] The ARN of the VPC.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_create_vpc_attachment_:_SubnetArns">SubnetArns</code></td>
<td><p>[required] The subnet ARN of the VPC attachment.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_create_vpc_attachment_:_Options">Options</code></td>
<td><p>Options for the VPC attachment.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_create_vpc_attachment_:_Tags">Tags</code></td>
<td><p>The key-value tags associated with the request.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_create_vpc_attachment_:_ClientToken">ClientToken</code></td>
<td><p>The client token associated with the request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VpcAttachment = list(
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
        SubnetArns = list(
          "string"
        ),
        Options = list(
          Ipv6Support = TRUE|FALSE,
          ApplianceModeSupport = TRUE|FALSE
        )
      )
    )

### Request syntax

    svc$create_vpc_attachment(
      CoreNetworkId = "string",
      VpcArn = "string",
      SubnetArns = list(
        "string"
      ),
      Options = list(
        Ipv6Support = TRUE|FALSE,
        ApplianceModeSupport = TRUE|FALSE
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      ClientToken = "string"
    )
