<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_search_place_index_for_suggestions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Generates suggestions for addresses and points of interest based on partial or misspelled free-form text

### Description

Generates suggestions for addresses and points of interest based on
partial or misspelled free-form text. This operation is also known as
autocomplete, autosuggest, or fuzzy matching.

Optional parameters let you narrow your search results by bounding box
or country, or bias your search toward a specific position on the globe.

You can search for suggested place names near a specified position by
using `BiasPosition`, or filter results within a bounding box by using
`FilterBBox`. These parameters are mutually exclusive; using both
`BiasPosition` and `FilterBBox` in the same command returns an error.

### Usage

    locationservice_search_place_index_for_suggestions(BiasPosition,
      FilterBBox, FilterCountries, IndexName, Language, MaxResults, Text)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_search_place_index_for_suggestions_:_BiasPosition">BiasPosition</code></td>
<td><p>An optional parameter that indicates a preference for place
suggestions that are closer to a specified position.</p>
<p>If provided, this parameter must contain a pair of numbers. The first
number represents the X coordinate, or longitude; the second number
represents the Y coordinate, or latitude.</p>
<p>For example, <code
style="white-space: pre;">⁠[-123.1174, 49.2847]⁠</code> represents the
position with longitude <code>-123.1174</code> and latitude
<code>49.2847</code>.</p>
<p><code>BiasPosition</code> and <code>FilterBBox</code> are mutually
exclusive. Specifying both options results in an error.</p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_search_place_index_for_suggestions_:_FilterBBox">FilterBBox</code></td>
<td><p>An optional parameter that limits the search results by returning
only suggestions within a specified bounding box.</p>
<p>If provided, this parameter must contain a total of four consecutive
numbers in two pairs. The first pair of numbers represents the X and Y
coordinates (longitude and latitude, respectively) of the southwest
corner of the bounding box; the second pair of numbers represents the X
and Y coordinates (longitude and latitude, respectively) of the
northeast corner of the bounding box.</p>
<p>For example, <code
style="white-space: pre;">⁠[-12.7935, -37.4835, -12.0684, -36.9542]⁠</code>
represents a bounding box where the southwest corner has longitude
<code>-12.7935</code> and latitude <code>-37.4835</code>, and the
northeast corner has longitude <code>-12.0684</code> and latitude
<code>-36.9542</code>.</p>
<p><code>FilterBBox</code> and <code>BiasPosition</code> are mutually
exclusive. Specifying both options results in an error.</p></td>
</tr>
<tr class="odd">
<td><code
id="locationservice_search_place_index_for_suggestions_:_FilterCountries">FilterCountries</code></td>
<td><p>An optional parameter that limits the search results by returning
only suggestions within the provided list of countries.</p>
<ul>
<li><p>Use the <a
href="https://www.iso.org/iso-3166-country-codes.html">ISO 3166</a>
3-digit country code. For example, Australia uses three upper-case
characters: <code>AUS</code>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="locationservice_search_place_index_for_suggestions_:_IndexName">IndexName</code></td>
<td><p>[required] The name of the place index resource you want to use
for the search.</p></td>
</tr>
<tr class="odd">
<td><code
id="locationservice_search_place_index_for_suggestions_:_Language">Language</code></td>
<td><p>The preferred language used to return results. The value must be
a valid BCP 47 language tag, for example, <code>en</code> for
English.</p>
<p>This setting affects the languages used in the results. If no
language is specified, or not supported for a particular result, the
partner automatically chooses a language for the result.</p>
<p>For an example, we'll use the Greek language. You search for <code
style="white-space: pre;">⁠Athens, Gr⁠</code> to get suggestions with the
<code>language</code> parameter set to <code>en</code>. The results
found will most likely be returned as <code
style="white-space: pre;">⁠Athens, Greece⁠</code>.</p>
<p>If you set the <code>language</code> parameter to <code>el</code>,
for Greek, then the result found will more likely be returned as <code
class="reqn">A\Theta\eta\nu\sigma, E\lambda\lambda\alpha\delta</code>.</p>
<p>If the data provider does not have a value for Greek, the result will
be in a language that the provider does support.</p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_search_place_index_for_suggestions_:_MaxResults">MaxResults</code></td>
<td><p>An optional parameter. The maximum number of results returned per
request.</p>
<p>The default: <code>5</code></p></td>
</tr>
<tr class="odd">
<td><code
id="locationservice_search_place_index_for_suggestions_:_Text">Text</code></td>
<td><p>[required] The free-form partial text to use to generate place
suggestions. For example, <code
style="white-space: pre;">⁠eiffel tow⁠</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Results = list(
        list(
          PlaceId = "string",
          Text = "string"
        )
      ),
      Summary = list(
        BiasPosition = list(
          123.0
        ),
        DataSource = "string",
        FilterBBox = list(
          123.0
        ),
        FilterCountries = list(
          "string"
        ),
        Language = "string",
        MaxResults = 123,
        Text = "string"
      )
    )

### Request syntax

    svc$search_place_index_for_suggestions(
      BiasPosition = list(
        123.0
      ),
      FilterBBox = list(
        123.0
      ),
      FilterCountries = list(
        "string"
      ),
      IndexName = "string",
      Language = "string",
      MaxResults = 123,
      Text = "string"
    )
