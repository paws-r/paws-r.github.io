<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_list_geo_locations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list of supported geographic locations

### Description

Retrieves a list of supported geographic locations.

Countries are listed first, and continents are listed last. If Amazon
Route 53 supports subdivisions for a country (for example, states or
provinces), the subdivisions for that country are listed in alphabetical
order immediately after the corresponding country.

Route 53 does not perform authorization for this API because it
retrieves information that is already available to the public.

For a list of supported geolocation codes, see the
[GeoLocation](https://docs.aws.amazon.com/Route53/latest/APIReference/API_GeoLocation.html)
data type.

### Usage

    route53_list_geo_locations(StartContinentCode, StartCountryCode,
      StartSubdivisionCode, MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53_list_geo_locations_:_StartContinentCode">StartContinentCode</code></td>
<td><p>The code for the continent with which you want to start listing
locations that Amazon Route 53 supports for geolocation. If Route 53 has
already returned a page or more of results, if <code>IsTruncated</code>
is true, and if <code>NextContinentCode</code> from the previous
response has a value, enter that value in
<code>startcontinentcode</code> to return the next page of results.</p>
<p>Include <code>startcontinentcode</code> only if you want to list
continents. Don't include <code>startcontinentcode</code> when you're
listing countries or countries with their subdivisions.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_list_geo_locations_:_StartCountryCode">StartCountryCode</code></td>
<td><p>The code for the country with which you want to start listing
locations that Amazon Route 53 supports for geolocation. If Route 53 has
already returned a page or more of results, if <code>IsTruncated</code>
is <code>true</code>, and if <code>NextCountryCode</code> from the
previous response has a value, enter that value in
<code>startcountrycode</code> to return the next page of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53_list_geo_locations_:_StartSubdivisionCode">StartSubdivisionCode</code></td>
<td><p>The code for the state of the United States with which you want
to start listing locations that Amazon Route 53 supports for
geolocation. If Route 53 has already returned a page or more of results,
if <code>IsTruncated</code> is <code>true</code>, and if
<code>NextSubdivisionCode</code> from the previous response has a value,
enter that value in <code>startsubdivisioncode</code> to return the next
page of results.</p>
<p>To list subdivisions (U.S. states), you must include both
<code>startcountrycode</code> and
<code>startsubdivisioncode</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_list_geo_locations_:_MaxItems">MaxItems</code></td>
<td><p>(Optional) The maximum number of geolocations to be included in
the response body for this request. If more than <code>maxitems</code>
geolocations remain to be listed, then the value of the
<code>IsTruncated</code> element in the response is
<code>true</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GeoLocationDetailsList = list(
        list(
          ContinentCode = "string",
          ContinentName = "string",
          CountryCode = "string",
          CountryName = "string",
          SubdivisionCode = "string",
          SubdivisionName = "string"
        )
      ),
      IsTruncated = TRUE|FALSE,
      NextContinentCode = "string",
      NextCountryCode = "string",
      NextSubdivisionCode = "string",
      MaxItems = "string"
    )

### Request syntax

    svc$list_geo_locations(
      StartContinentCode = "string",
      StartCountryCode = "string",
      StartSubdivisionCode = "string",
      MaxItems = "string"
    )
