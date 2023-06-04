<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_create_place_index</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a place index resource in your Amazon Web Services account

### Description

Creates a place index resource in your Amazon Web Services account. Use
a place index resource to geocode addresses and other text queries by
using the `search_place_index_for_text` operation, and reverse geocode
coordinates by using the `search_place_index_for_position` operation,
and enable autosuggestions by using the
`search_place_index_for_suggestions` operation.

If your application is tracking or routing assets you use in your
business, such as delivery vehicles or employees, you must not use Esri
as your geolocation provider. See section 82 of the [Amazon Web Services
service terms](https://aws.amazon.com/service-terms/) for more details.

### Usage

    locationservice_create_place_index(DataSource, DataSourceConfiguration,
      Description, IndexName, PricingPlan, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_create_place_index_:_DataSource">DataSource</code></td>
<td><p>[required] Specifies the geospatial data provider for the new
place index.</p>
<p>This field is case-sensitive. Enter the valid values as shown. For
example, entering <code>HERE</code> returns an error.</p>
<p>Valid values include:</p>
<ul>
<li><p><code>Esri</code> – For additional information about <a
href="https://docs.aws.amazon.com/location/latest/developerguide/esri.html">Esri</a>'s
coverage in your region of interest, see <a
href="https://developers.arcgis.com/rest/geocode/api-reference/geocode-coverage.htm">Esri
details on geocoding coverage</a>.</p></li>
<li><p><code>Grab</code> – Grab provides place index functionality for
Southeast Asia. For additional information about <a
href="https://docs.aws.amazon.com/location/latest/developerguide/grab.html">GrabMaps</a>'
coverage, see <a
href="https://docs.aws.amazon.com/location/latest/developerguide/grab.html#grab-coverage-area">GrabMaps
countries and areas covered</a>.</p></li>
<li><p><code>Here</code> – For additional information about <a
href="https://docs.aws.amazon.com/location/latest/developerguide/HERE.html">HERE
Technologies</a>' coverage in your region of interest, see HERE details
on goecoding coverage.</p>
<p>If you specify HERE Technologies (<code>Here</code>) as the data
provider, you may not <a
href="https://docs.aws.amazon.com/location/latest/APIReference/API_DataSourceConfiguration.html">store
results</a> for locations in Japan. For more information, see the <a
href="https://aws.amazon.com/service-terms/">Amazon Web Services Service
Terms</a> for Amazon Location Service.</p></li>
</ul>
<p>For additional information , see <a
href="https://docs.aws.amazon.com/location/latest/developerguide/what-is-data-provider.html">Data
providers</a> on the <em>Amazon Location Service Developer
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_create_place_index_:_DataSourceConfiguration">DataSourceConfiguration</code></td>
<td><p>Specifies the data storage option requesting Places.</p></td>
</tr>
<tr class="odd">
<td><code
id="locationservice_create_place_index_:_Description">Description</code></td>
<td><p>The optional description for the place index resource.</p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_create_place_index_:_IndexName">IndexName</code></td>
<td><p>[required] The name of the place index resource.</p>
<p>Requirements:</p>
<ul>
<li><p>Contain only alphanumeric characters (A–Z, a–z, 0–9), hyphens
(-), periods (.), and underscores (_).</p></li>
<li><p>Must be a unique place index resource name.</p></li>
<li><p>No spaces allowed. For example,
<code>ExamplePlaceIndex</code>.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="locationservice_create_place_index_:_PricingPlan">PricingPlan</code></td>
<td><p>No longer used. If included, the only allowed value is
<code>RequestBasedUsage</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_create_place_index_:_Tags">Tags</code></td>
<td><p>Applies one or more tags to the place index resource. A tag is a
key-value pair that helps you manage, identify, search, and filter your
resources.</p>
<p>Format: <code>"key" : "value"</code></p>
<p>Restrictions:</p>
<ul>
<li><p>Maximum 50 tags per resource.</p></li>
<li><p>Each tag key must be unique and must have exactly one associated
value.</p></li>
<li><p>Maximum key length: 128 Unicode characters in UTF-8.</p></li>
<li><p>Maximum value length: 256 Unicode characters in UTF-8.</p></li>
<li><p>Can use alphanumeric characters (A–Z, a–z, 0–9), and the
following characters: + - = . _ : / @</p></li>
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
      IndexArn = "string",
      IndexName = "string"
    )

### Request syntax

    svc$create_place_index(
      DataSource = "string",
      DataSourceConfiguration = list(
        IntendedUse = "SingleUse"|"Storage"
      ),
      Description = "string",
      IndexName = "string",
      PricingPlan = "RequestBasedUsage"|"MobileAssetTracking"|"MobileAssetManagement",
      Tags = list(
        "string"
      )
    )
