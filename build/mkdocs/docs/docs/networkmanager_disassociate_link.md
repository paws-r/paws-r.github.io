<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_disassociate_link</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates an existing device from a link

### Description

Disassociates an existing device from a link. You must first
disassociate any customer gateways that are associated with the link.

### Usage

    networkmanager_disassociate_link(GlobalNetworkId, DeviceId, LinkId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_disassociate_link_:_GlobalNetworkId">GlobalNetworkId</code></td>
<td><p>[required] The ID of the global network.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_disassociate_link_:_DeviceId">DeviceId</code></td>
<td><p>[required] The ID of the device.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_disassociate_link_:_LinkId">LinkId</code></td>
<td><p>[required] The ID of the link.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LinkAssociation = list(
        GlobalNetworkId = "string",
        DeviceId = "string",
        LinkId = "string",
        LinkAssociationState = "PENDING"|"AVAILABLE"|"DELETING"|"DELETED"
      )
    )

### Request syntax

    svc$disassociate_link(
      GlobalNetworkId = "string",
      DeviceId = "string",
      LinkId = "string"
    )
