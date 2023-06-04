<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_get_map_style_descriptor</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the map style descriptor from a map resource

### Description

Retrieves the map style descriptor from a map resource.

The style descriptor contains speciﬁcations on how features render on a
map. For example, what data to display, what order to display the data
in, and the style for the data. Style descriptors follow the Mapbox
Style Specification.

### Usage

    locationservice_get_map_style_descriptor(Key, MapName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_get_map_style_descriptor_:_Key">Key</code></td>
<td><p>The optional <a
href="https://docs.aws.amazon.com/location/latest/developerguide/using-apikeys.html">API
key</a> to authorize the request.</p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_get_map_style_descriptor_:_MapName">MapName</code></td>
<td><p>[required] The map resource to retrieve the style descriptor
from.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Blob = raw,
      CacheControl = "string",
      ContentType = "string"
    )

### Request syntax

    svc$get_map_style_descriptor(
      Key = "string",
      MapName = "string"
    )
