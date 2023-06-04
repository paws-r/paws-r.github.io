<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_get_map_glyphs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves glyphs used to display labels on a map

### Description

Retrieves glyphs used to display labels on a map.

### Usage

    locationservice_get_map_glyphs(FontStack, FontUnicodeRange, Key,
      MapName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_get_map_glyphs_:_FontStack">FontStack</code></td>
<td><p>[required] A comma-separated list of fonts to load glyphs from in
order of preference. For example, <code
style="white-space: pre;">⁠Noto Sans Regular, Arial Unicode⁠</code>.</p>
<p>Valid fonts stacks for <a
href="https://docs.aws.amazon.com/location/latest/developerguide/esri.html">Esri</a>
styles:</p>
<ul>
<li><p>VectorEsriDarkGrayCanvas – <code
style="white-space: pre;">⁠Ubuntu Medium Italic⁠</code> | <code
style="white-space: pre;">⁠Ubuntu Medium⁠</code> | <code
style="white-space: pre;">⁠Ubuntu Italic⁠</code> | <code
style="white-space: pre;">⁠Ubuntu Regular⁠</code> | <code
style="white-space: pre;">⁠Ubuntu Bold⁠</code></p></li>
<li><p>VectorEsriLightGrayCanvas – <code
style="white-space: pre;">⁠Ubuntu Italic⁠</code> | <code
style="white-space: pre;">⁠Ubuntu Regular⁠</code> | <code
style="white-space: pre;">⁠Ubuntu Light⁠</code> | <code
style="white-space: pre;">⁠Ubuntu Bold⁠</code></p></li>
<li><p>VectorEsriTopographic – <code
style="white-space: pre;">⁠Noto Sans Italic⁠</code> | <code
style="white-space: pre;">⁠Noto Sans Regular⁠</code> | <code
style="white-space: pre;">⁠Noto Sans Bold⁠</code> | <code
style="white-space: pre;">⁠Noto Serif Regular⁠</code> | <code
style="white-space: pre;">⁠Roboto Condensed Light Italic⁠</code></p></li>
<li><p>VectorEsriStreets – <code
style="white-space: pre;">⁠Arial Regular⁠</code> | <code
style="white-space: pre;">⁠Arial Italic⁠</code> | <code
style="white-space: pre;">⁠Arial Bold⁠</code></p></li>
<li><p>VectorEsriNavigation – <code
style="white-space: pre;">⁠Arial Regular⁠</code> | <code
style="white-space: pre;">⁠Arial Italic⁠</code> | <code
style="white-space: pre;">⁠Arial Bold⁠</code></p></li>
</ul>
<p>Valid font stacks for <a
href="https://docs.aws.amazon.com/location/latest/developerguide/HERE.html">HERE
Technologies</a> styles:</p>
<ul>
<li><p>VectorHereContrast – <code
style="white-space: pre;">⁠Fira GO Regular⁠</code> | <code
style="white-space: pre;">⁠Fira GO Bold⁠</code></p></li>
<li><p>VectorHereExplore, VectorHereExploreTruck,
HybridHereExploreSatellite – <code
style="white-space: pre;">⁠Fira GO Italic⁠</code> | <code
style="white-space: pre;">⁠Fira GO Map⁠</code> | <code
style="white-space: pre;">⁠Fira GO Map Bold⁠</code> | <code
style="white-space: pre;">⁠Noto Sans CJK JP Bold⁠</code> | <code
style="white-space: pre;">⁠Noto Sans CJK JP Light⁠</code> | <code
style="white-space: pre;">⁠Noto Sans CJK JP Regular⁠</code></p></li>
</ul>
<p>Valid font stacks for <a
href="https://docs.aws.amazon.com/location/latest/developerguide/grab.html">GrabMaps</a>
styles:</p>
<ul>
<li><p>VectorGrabStandardLight, VectorGrabStandardDark – <code
style="white-space: pre;">⁠Noto Sans Regular⁠</code> | <code
style="white-space: pre;">⁠Noto Sans Medium⁠</code> | <code
style="white-space: pre;">⁠Noto Sans Bold⁠</code></p></li>
</ul>
<p>Valid font stacks for <a
href="https://docs.aws.amazon.com/location/latest/developerguide/open-data.html">Open
Data</a> styles:</p>
<ul>
<li><p>VectorOpenDataStandardLight, VectorOpenDataStandardDark,
VectorOpenDataVisualizationLight, VectorOpenDataVisualizationDark –
<code
style="white-space: pre;">⁠Amazon Ember Regular,Noto Sans Regular⁠</code>
| <code
style="white-space: pre;">⁠Amazon Ember Bold,Noto Sans Bold⁠</code> |
<code
style="white-space: pre;">⁠Amazon Ember Medium,Noto Sans Medium⁠</code> |
<code
style="white-space: pre;">⁠Amazon Ember Regular Italic,Noto Sans Italic⁠</code>
| <code
style="white-space: pre;">⁠Amazon Ember Condensed RC Regular,Noto Sans Regular⁠</code>
| <code
style="white-space: pre;">⁠Amazon Ember Condensed RC Bold,Noto Sans Bold⁠</code></p></li>
</ul>
<p>The fonts used by the Open Data map styles are combined fonts that
use <code style="white-space: pre;">⁠Amazon Ember⁠</code> for most glyphs
but <code style="white-space: pre;">⁠Noto Sans⁠</code> for glyphs
unsupported by <code
style="white-space: pre;">⁠Amazon Ember⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_get_map_glyphs_:_FontUnicodeRange">FontUnicodeRange</code></td>
<td><p>[required] A Unicode range of characters to download glyphs for.
Each response will contain 256 characters. For example, 0–255 includes
all characters from range <code>U+0000</code> to <code
style="white-space: pre;">⁠00FF⁠</code>. Must be aligned to multiples of
256.</p></td>
</tr>
<tr class="odd">
<td><code id="locationservice_get_map_glyphs_:_Key">Key</code></td>
<td><p>The optional <a
href="https://docs.aws.amazon.com/location/latest/developerguide/using-apikeys.html">API
key</a> to authorize the request.</p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_get_map_glyphs_:_MapName">MapName</code></td>
<td><p>[required] The map resource associated with the glyph
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

    svc$get_map_glyphs(
      FontStack = "string",
      FontUnicodeRange = "string",
      Key = "string",
      MapName = "string"
    )
