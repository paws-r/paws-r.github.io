<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_search_place_index_for_position</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Reverse geocodes a given coordinate and returns a legible address

### Description

Reverse geocodes a given coordinate and returns a legible address.
Allows you to search for Places or points of interest near a given
position.

### Usage

    locationservice_search_place_index_for_position(IndexName, Language,
      MaxResults, Position)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_search_place_index_for_position_:_IndexName">IndexName</code></td>
<td><p>[required] The name of the place index resource you want to use
for the search.</p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_search_place_index_for_position_:_Language">Language</code></td>
<td><p>The preferred language used to return results. The value must be
a valid BCP 47 language tag, for example, <code>en</code> for
English.</p>
<p>This setting affects the languages used in the results, but not the
results themselves. If no language is specified, or not supported for a
particular result, the partner automatically chooses a language for the
result.</p>
<p>For an example, we'll use the Greek language. You search for a
location around Athens, Greece, with the <code>language</code> parameter
set to <code>en</code>. The <code>city</code> in the results will most
likely be returned as <code>Athens</code>.</p>
<p>If you set the <code>language</code> parameter to <code>el</code>,
for Greek, then the <code>city</code> in the results will more likely be
returned as <code class="reqn">A\Theta\eta\nu\alpha</code>.</p>
<p>If the data provider does not have a value for Greek, the result will
be in a language that the provider does support.</p></td>
</tr>
<tr class="odd">
<td><code
id="locationservice_search_place_index_for_position_:_MaxResults">MaxResults</code></td>
<td><p>An optional parameter. The maximum number of results returned per
request.</p>
<p>Default value: <code>50</code></p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_search_place_index_for_position_:_Position">Position</code></td>
<td><p>[required] Specifies the longitude and latitude of the position
to query.</p>
<p>This parameter must contain a pair of numbers. The first number
represents the X coordinate, or longitude; the second number represents
the Y coordinate, or latitude.</p>
<p>For example, <code
style="white-space: pre;">⁠[-123.1174, 49.2847]⁠</code> represents a
position with longitude <code>-123.1174</code> and latitude
<code>49.2847</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Results = list(
        list(
          Distance = 123.0,
          Place = list(
            AddressNumber = "string",
            Country = "string",
            Geometry = list(
              Point = list(
                123.0
              )
            ),
            Interpolated = TRUE|FALSE,
            Label = "string",
            Municipality = "string",
            Neighborhood = "string",
            PostalCode = "string",
            Region = "string",
            Street = "string",
            SubRegion = "string",
            TimeZone = list(
              Name = "string",
              Offset = 123
            ),
            UnitNumber = "string",
            UnitType = "string"
          ),
          PlaceId = "string"
        )
      ),
      Summary = list(
        DataSource = "string",
        Language = "string",
        MaxResults = 123,
        Position = list(
          123.0
        )
      )
    )

### Request syntax

    svc$search_place_index_for_position(
      IndexName = "string",
      Language = "string",
      MaxResults = 123,
      Position = list(
        123.0
      )
    )
