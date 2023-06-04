<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_create_site_to_site_vpn_attachment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Amazon Web Services site-to-site VPN attachment on an edge location of a core network

### Description

Creates an Amazon Web Services site-to-site VPN attachment on an edge
location of a core network.

### Usage

    networkmanager_create_site_to_site_vpn_attachment(CoreNetworkId,
      VpnConnectionArn, Tags, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_create_site_to_site_vpn_attachment_:_CoreNetworkId">CoreNetworkId</code></td>
<td><p>[required] The ID of a core network where you're creating a
site-to-site VPN attachment.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_create_site_to_site_vpn_attachment_:_VpnConnectionArn">VpnConnectionArn</code></td>
<td><p>[required] The ARN identifying the VPN attachment.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_create_site_to_site_vpn_attachment_:_Tags">Tags</code></td>
<td><p>The tags associated with the request.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_create_site_to_site_vpn_attachment_:_ClientToken">ClientToken</code></td>
<td><p>The client token associated with the request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SiteToSiteVpnAttachment = list(
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
        VpnConnectionArn = "string"
      )
    )

### Request syntax

    svc$create_site_to_site_vpn_attachment(
      CoreNetworkId = "string",
      VpnConnectionArn = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      ClientToken = "string"
    )
