<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_create_route_calculator</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a route calculator resource in your Amazon Web Services account

### Description

Creates a route calculator resource in your Amazon Web Services account.

You can send requests to a route calculator resource to estimate travel
time, distance, and get directions. A route calculator sources traffic
and road network data from your chosen data provider.

If your application is tracking or routing assets you use in your
business, such as delivery vehicles or employees, you must not use Esri
as your geolocation provider. See section 82 of the [Amazon Web Services
service terms](https://aws.amazon.com/service-terms/) for more details.

### Usage

    locationservice_create_route_calculator(CalculatorName, DataSource,
      Description, PricingPlan, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_create_route_calculator_:_CalculatorName">CalculatorName</code></td>
<td><p>[required] The name of the route calculator resource.</p>
<p>Requirements:</p>
<ul>
<li><p>Can use alphanumeric characters (A–Z, a–z, 0–9) , hyphens (-),
periods (.), and underscores (_).</p></li>
<li><p>Must be a unique Route calculator resource name.</p></li>
<li><p>No spaces allowed. For example,
<code>ExampleRouteCalculator</code>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="locationservice_create_route_calculator_:_DataSource">DataSource</code></td>
<td><p>[required] Specifies the data provider of traffic and road
network data.</p>
<p>This field is case-sensitive. Enter the valid values as shown. For
example, entering <code>HERE</code> returns an error.</p>
<p>Valid values include:</p>
<ul>
<li><p><code>Esri</code> – For additional information about <a
href="https://docs.aws.amazon.com/location/latest/developerguide/esri.html">Esri</a>'s
coverage in your region of interest, see <a
href="https://doc.arcgis.com/en/arcgis-online/reference/network-coverage.htm">Esri
details on street networks and traffic coverage</a>.</p>
<p>Route calculators that use Esri as a data source only calculate
routes that are shorter than 400 km.</p></li>
<li><p><code>Grab</code> – Grab provides routing functionality for
Southeast Asia. For additional information about <a
href="https://docs.aws.amazon.com/location/latest/developerguide/grab.html">GrabMaps</a>'
coverage, see <a
href="https://docs.aws.amazon.com/location/latest/developerguide/grab.html#grab-coverage-area">GrabMaps
countries and areas covered</a>.</p></li>
<li><p><code>Here</code> – For additional information about <a
href="https://docs.aws.amazon.com/location/latest/developerguide/HERE.html">HERE
Technologies</a>' coverage in your region of interest, see HERE car
routing coverage and HERE truck routing coverage.</p></li>
</ul>
<p>For additional information , see <a
href="https://docs.aws.amazon.com/location/latest/developerguide/what-is-data-provider.html">Data
providers</a> on the <em>Amazon Location Service Developer
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="locationservice_create_route_calculator_:_Description">Description</code></td>
<td><p>The optional description for the route calculator
resource.</p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_create_route_calculator_:_PricingPlan">PricingPlan</code></td>
<td><p>No longer used. If included, the only allowed value is
<code>RequestBasedUsage</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="locationservice_create_route_calculator_:_Tags">Tags</code></td>
<td><p>Applies one or more tags to the route calculator resource. A tag
is a key-value pair helps manage, identify, search, and filter your
resources by labelling them.</p>
<ul>
<li><p>For example: { <code>"tag1" : "value1"</code>,
<code>"tag2" : "value2"</code>}</p></li>
</ul>
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
      CalculatorArn = "string",
      CalculatorName = "string",
      CreateTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$create_route_calculator(
      CalculatorName = "string",
      DataSource = "string",
      Description = "string",
      PricingPlan = "RequestBasedUsage"|"MobileAssetTracking"|"MobileAssetManagement",
      Tags = list(
        "string"
      )
    )
