<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_get_place</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Finds a place by its unique ID

### Description

Finds a place by its unique ID. A `PlaceId` is returned by other search
operations.

A PlaceId is valid only if all of the following are the same in the
original search request and the call to `get_place`.

-   Customer Amazon Web Services account

-   Amazon Web Services Region

-   Data provider specified in the place index resource

### Usage

    locationservice_get_place(IndexName, Language, PlaceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_get_place_:_IndexName">IndexName</code></td>
<td><p>[required] The name of the place index resource that you want to
use for the search.</p></td>
</tr>
<tr class="even">
<td><code id="locationservice_get_place_:_Language">Language</code></td>
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
<td><code id="locationservice_get_place_:_PlaceId">PlaceId</code></td>
<td><p>[required] The identifier of the place to find.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
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
      )
    )

### Request syntax

    svc$get_place(
      IndexName = "string",
      Language = "string",
      PlaceId = "string"
    )
