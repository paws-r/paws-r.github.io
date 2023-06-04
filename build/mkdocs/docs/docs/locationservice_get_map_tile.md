<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_get_map_tile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a vector data tile from the map resource

### Description

Retrieves a vector data tile from the map resource. Map tiles are used
by clients to render a map. they're addressed using a grid arrangement
with an X coordinate, Y coordinate, and Z (zoom) level.

The origin (0, 0) is the top left of the map. Increasing the zoom level
by 1 doubles both the X and Y dimensions, so a tile containing data for
the entire world at (0/0/0) will be split into 4 tiles at zoom 1 (1/0/0,
1/0/1, 1/1/0, 1/1/1).

### Usage

    locationservice_get_map_tile(Key, MapName, X, Y, Z)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="locationservice_get_map_tile_:_Key">Key</code></td>
<td><p>The optional <a
href="https://docs.aws.amazon.com/location/latest/developerguide/using-apikeys.html">API
key</a> to authorize the request.</p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_get_map_tile_:_MapName">MapName</code></td>
<td><p>[required] The map resource to retrieve the map tiles
from.</p></td>
</tr>
<tr class="odd">
<td><code id="locationservice_get_map_tile_:_X">X</code></td>
<td><p>[required] The X axis value for the map tile.</p></td>
</tr>
<tr class="even">
<td><code id="locationservice_get_map_tile_:_Y">Y</code></td>
<td><p>[required] The Y axis value for the map tile.</p></td>
</tr>
<tr class="odd">
<td><code id="locationservice_get_map_tile_:_Z">Z</code></td>
<td><p>[required] The zoom value for the map tile.</p></td>
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

    svc$get_map_tile(
      Key = "string",
      MapName = "string",
      X = "string",
      Y = "string",
      Z = "string"
    )
