<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_delete_attachment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an attachment

### Description

Deletes an attachment. Supports all attachment types.

### Usage

    networkmanager_delete_attachment(AttachmentId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_delete_attachment_:_AttachmentId">AttachmentId</code></td>
<td><p>[required] The ID of the attachment to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
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
      )
    )

### Request syntax

    svc$delete_attachment(
      AttachmentId = "string"
    )
