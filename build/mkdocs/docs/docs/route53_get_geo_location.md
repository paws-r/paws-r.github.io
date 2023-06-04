<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_get_geo_location</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about whether a specified geographic location is supported for Amazon Route 53 geolocation resource record sets

### Description

Gets information about whether a specified geographic location is
supported for Amazon Route 53 geolocation resource record sets.

Route 53 does not perform authorization for this API because it
retrieves information that is already available to the public.

Use the following syntax to determine whether a continent is supported
for geolocation:

`⁠GET /2013-04-01/geolocation?continentcode=two-letter abbreviation for a continent ⁠`

Use the following syntax to determine whether a country is supported for
geolocation:

`⁠GET /2013-04-01/geolocation?countrycode=two-character country code ⁠`

Use the following syntax to determine whether a subdivision of a country
is supported for geolocation:

`⁠GET /2013-04-01/geolocation?countrycode=two-character country code&subdivisioncode=subdivision code ⁠`

### Usage

    route53_get_geo_location(ContinentCode, CountryCode, SubdivisionCode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53_get_geo_location_:_ContinentCode">ContinentCode</code></td>
<td><p>For geolocation resource record sets, a two-letter abbreviation
that identifies a continent. Amazon Route 53 supports the following
continent codes:</p>
<ul>
<li><p><strong>AF</strong>: Africa</p></li>
<li><p><strong>AN</strong>: Antarctica</p></li>
<li><p><strong>AS</strong>: Asia</p></li>
<li><p><strong>EU</strong>: Europe</p></li>
<li><p><strong>OC</strong>: Oceania</p></li>
<li><p><strong>NA</strong>: North America</p></li>
<li><p><strong>SA</strong>: South America</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="route53_get_geo_location_:_CountryCode">CountryCode</code></td>
<td><p>Amazon Route 53 uses the two-letter country codes that are
specified in <a
href="https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2">ISO standard
3166-1 alpha-2</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53_get_geo_location_:_SubdivisionCode">SubdivisionCode</code></td>
<td><p>The code for the subdivision, such as a particular state within
the United States. For a list of US state abbreviations, see Appendix B:
Two–Letter State and Possession Abbreviations on the United States
Postal Service website. For a list of all supported subdivision codes,
use the <code>list_geo_locations</code> API.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GeoLocationDetails = list(
        ContinentCode = "string",
        ContinentName = "string",
        CountryCode = "string",
        CountryName = "string",
        SubdivisionCode = "string",
        SubdivisionName = "string"
      )
    )

### Request syntax

    svc$get_geo_location(
      ContinentCode = "string",
      CountryCode = "string",
      SubdivisionCode = "string"
    )
