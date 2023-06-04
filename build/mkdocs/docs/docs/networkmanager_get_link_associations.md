<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_get_link_associations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the link associations for a device or a link

### Description

Gets the link associations for a device or a link. Either the device ID
or the link ID must be specified.

### Usage

    networkmanager_get_link_associations(GlobalNetworkId, DeviceId, LinkId,
      MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_get_link_associations_:_GlobalNetworkId">GlobalNetworkId</code></td>
<td><p>[required] The ID of the global network.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_get_link_associations_:_DeviceId">DeviceId</code></td>
<td><p>The ID of the device.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_get_link_associations_:_LinkId">LinkId</code></td>
<td><p>The ID of the link.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_get_link_associations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_get_link_associations_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LinkAssociations = list(
        list(
          GlobalNetworkId = "string",
          DeviceId = "string",
          LinkId = "string",
          LinkAssociationState = "PENDING"|"AVAILABLE"|"DELETING"|"DELETED"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_link_associations(
      GlobalNetworkId = "string",
      DeviceId = "string",
      LinkId = "string",
      MaxResults = 123,
      NextToken = "string"
    )
