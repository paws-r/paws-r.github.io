<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_create_connect_attachment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a core network Connect attachment from a specified core network attachment

### Description

Creates a core network Connect attachment from a specified core network
attachment.

A core network Connect attachment is a GRE-based tunnel attachment that
you can use to establish a connection between a core network and an
appliance. A core network Connect attachment uses an existing VPC
attachment as the underlying transport mechanism.

### Usage

    networkmanager_create_connect_attachment(CoreNetworkId, EdgeLocation,
      TransportAttachmentId, Options, Tags, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_create_connect_attachment_:_CoreNetworkId">CoreNetworkId</code></td>
<td><p>[required] The ID of a core network where you want to create the
attachment.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_create_connect_attachment_:_EdgeLocation">EdgeLocation</code></td>
<td><p>[required] The Region where the edge is located.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_create_connect_attachment_:_TransportAttachmentId">TransportAttachmentId</code></td>
<td><p>[required] The ID of the attachment between the two
connections.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_create_connect_attachment_:_Options">Options</code></td>
<td><p>[required] Options for creating an attachment.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_create_connect_attachment_:_Tags">Tags</code></td>
<td><p>The list of key-value tags associated with the request.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_create_connect_attachment_:_ClientToken">ClientToken</code></td>
<td><p>The client token associated with the request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConnectAttachment = list(
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
        TransportAttachmentId = "string",
        Options = list(
          Protocol = "GRE"
        )
      )
    )

### Request syntax

    svc$create_connect_attachment(
      CoreNetworkId = "string",
      EdgeLocation = "string",
      TransportAttachmentId = "string",
      Options = list(
        Protocol = "GRE"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      ClientToken = "string"
    )
