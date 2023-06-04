<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_update_vpc_attachment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a VPC attachment

### Description

Updates a VPC attachment.

### Usage

    networkmanager_update_vpc_attachment(AttachmentId, AddSubnetArns,
      RemoveSubnetArns, Options)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_update_vpc_attachment_:_AttachmentId">AttachmentId</code></td>
<td><p>[required] The ID of the attachment.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_update_vpc_attachment_:_AddSubnetArns">AddSubnetArns</code></td>
<td><p>Adds a subnet ARN to the VPC attachment.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_update_vpc_attachment_:_RemoveSubnetArns">RemoveSubnetArns</code></td>
<td><p>Removes a subnet ARN from the attachment.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_update_vpc_attachment_:_Options">Options</code></td>
<td><p>Additional options for updating the VPC attachment.</p></td>
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

    svc$update_vpc_attachment(
      AttachmentId = "string",
      AddSubnetArns = list(
        "string"
      ),
      RemoveSubnetArns = list(
        "string"
      ),
      Options = list(
        Ipv6Support = TRUE|FALSE,
        ApplianceModeSupport = TRUE|FALSE
      )
    )
