<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_associate_link</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates a link to a device

### Description

Associates a link to a device. A device can be associated to multiple
links and a link can be associated to multiple devices. The device and
link must be in the same global network and the same site.

### Usage

    networkmanager_associate_link(GlobalNetworkId, DeviceId, LinkId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_associate_link_:_GlobalNetworkId">GlobalNetworkId</code></td>
<td><p>[required] The ID of the global network.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_associate_link_:_DeviceId">DeviceId</code></td>
<td><p>[required] The ID of the device.</p></td>
</tr>
<tr class="odd">
<td><code id="networkmanager_associate_link_:_LinkId">LinkId</code></td>
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

    svc$associate_link(
      GlobalNetworkId = "string",
      DeviceId = "string",
      LinkId = "string"
    )
