<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_get_map_sprites</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the sprite sheet corresponding to a map resource

### Description

Retrieves the sprite sheet corresponding to a map resource. The sprite
sheet is a PNG image paired with a JSON document describing the offsets
of individual icons that will be displayed on a rendered map.

### Usage

    locationservice_get_map_sprites(FileName, Key, MapName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_get_map_sprites_:_FileName">FileName</code></td>
<td><p>[required] The name of the sprite ﬁle. Use the following ﬁle
names for the sprite sheet:</p>
<ul>
<li><p><code>sprites.png</code></p></li>
<li><p><code style="white-space: pre;">⁠sprites@2x.png⁠</code> for high
pixel density displays</p></li>
</ul>
<p>For the JSON document containing image offsets. Use the following ﬁle
names:</p>
<ul>
<li><p><code>sprites.json</code></p></li>
<li><p><code style="white-space: pre;">⁠sprites@2x.json⁠</code> for high
pixel density displays</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="locationservice_get_map_sprites_:_Key">Key</code></td>
<td><p>The optional <a
href="https://docs.aws.amazon.com/location/latest/developerguide/using-apikeys.html">API
key</a> to authorize the request.</p></td>
</tr>
<tr class="odd">
<td><code
id="locationservice_get_map_sprites_:_MapName">MapName</code></td>
<td><p>[required] The map resource associated with the sprite
ﬁle.</p></td>
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

    svc$get_map_sprites(
      FileName = "string",
      Key = "string",
      MapName = "string"
    )
