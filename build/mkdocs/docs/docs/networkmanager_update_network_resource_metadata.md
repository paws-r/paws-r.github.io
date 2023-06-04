<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_update_network_resource_metadata</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the resource metadata for the specified global network

### Description

Updates the resource metadata for the specified global network.

### Usage

    networkmanager_update_network_resource_metadata(GlobalNetworkId,
      ResourceArn, Metadata)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_update_network_resource_metadata_:_GlobalNetworkId">GlobalNetworkId</code></td>
<td><p>[required] The ID of the global network.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_update_network_resource_metadata_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The ARN of the resource.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_update_network_resource_metadata_:_Metadata">Metadata</code></td>
<td><p>[required] The resource metadata.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceArn = "string",
      Metadata = list(
        "string"
      )
    )

### Request syntax

    svc$update_network_resource_metadata(
      GlobalNetworkId = "string",
      ResourceArn = "string",
      Metadata = list(
        "string"
      )
    )
