<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_get_site_to_site_vpn_attachment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a site-to-site VPN attachment

### Description

Returns information about a site-to-site VPN attachment.

### Usage

    networkmanager_get_site_to_site_vpn_attachment(AttachmentId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_get_site_to_site_vpn_attachment_:_AttachmentId">AttachmentId</code></td>
<td><p>[required] The ID of the attachment.</p></td>
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

    svc$get_site_to_site_vpn_attachment(
      AttachmentId = "string"
    )
