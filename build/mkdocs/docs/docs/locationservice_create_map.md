<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_create_map</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a map resource in your Amazon Web Services account, which provides map tiles of different styles sourced from global location data providers

### Description

Creates a map resource in your Amazon Web Services account, which
provides map tiles of different styles sourced from global location data
providers.

If your application is tracking or routing assets you use in your
business, such as delivery vehicles or employees, you must not use Esri
as your geolocation provider. See section 82 of the [Amazon Web Services
service terms](https://aws.amazon.com/service-terms/) for more details.

### Usage

    locationservice_create_map(Configuration, Description, MapName,
      PricingPlan, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_create_map_:_Configuration">Configuration</code></td>
<td><p>[required] Specifies the <code>MapConfiguration</code>, including
the map style, for the map resource that you create. The map style
defines the look of maps and the data provider for your map
resource.</p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_create_map_:_Description">Description</code></td>
<td><p>An optional description for the map resource.</p></td>
</tr>
<tr class="odd">
<td><code id="locationservice_create_map_:_MapName">MapName</code></td>
<td><p>[required] The name for the map resource.</p>
<p>Requirements:</p>
<ul>
<li><p>Must contain only alphanumeric characters (A–Z, a–z, 0–9),
hyphens (-), periods (.), and underscores (_).</p></li>
<li><p>Must be a unique map resource name.</p></li>
<li><p>No spaces allowed. For example, <code>ExampleMap</code>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="locationservice_create_map_:_PricingPlan">PricingPlan</code></td>
<td><p>No longer used. If included, the only allowed value is
<code>RequestBasedUsage</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="locationservice_create_map_:_Tags">Tags</code></td>
<td><p>Applies one or more tags to the map resource. A tag is a
key-value pair helps manage, identify, search, and filter your resources
by labelling them.</p>
<p>Format: <code>"key" : "value"</code></p>
<p>Restrictions:</p>
<ul>
<li><p>Maximum 50 tags per resource</p></li>
<li><p>Each resource tag must be unique with a maximum of one
value.</p></li>
<li><p>Maximum key length: 128 Unicode characters in UTF-8</p></li>
<li><p>Maximum value length: 256 Unicode characters in UTF-8</p></li>
<li><p>Can use alphanumeric characters (A–Z, a–z, 0–9), and the
following characters: + - = . _ : / @.</p></li>
<li><p>Cannot use "aws:" as a prefix for a key.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CreateTime = as.POSIXct(
        "2015-01-01"
      ),
      MapArn = "string",
      MapName = "string"
    )

### Request syntax

    svc$create_map(
      Configuration = list(
        Style = "string"
      ),
      Description = "string",
      MapName = "string",
      PricingPlan = "RequestBasedUsage"|"MobileAssetTracking"|"MobileAssetManagement",
      Tags = list(
        "string"
      )
    )
