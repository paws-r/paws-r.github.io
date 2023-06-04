<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pricing_get_products</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of all products that match the filter criteria

### Description

Returns a list of all products that match the filter criteria.

### Usage

    pricing_get_products(ServiceCode, Filters, FormatVersion, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pricing_get_products_:_ServiceCode">ServiceCode</code></td>
<td><p>[required] The code for the service whose products you want to
retrieve.</p></td>
</tr>
<tr class="even">
<td><code id="pricing_get_products_:_Filters">Filters</code></td>
<td><p>The list of filters that limit the returned products. only
products that match all filters are returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="pricing_get_products_:_FormatVersion">FormatVersion</code></td>
<td><p>The format version that you want the response to be in.</p>
<p>Valid values are: <code>aws_v1</code></p></td>
</tr>
<tr class="even">
<td><code id="pricing_get_products_:_NextToken">NextToken</code></td>
<td><p>The pagination token that indicates the next set of results that
you want to retrieve.</p></td>
</tr>
<tr class="odd">
<td><code id="pricing_get_products_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in the response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FormatVersion = "string",
      PriceList = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_products(
      ServiceCode = "string",
      Filters = list(
        list(
          Type = "TERM_MATCH",
          Field = "string",
          Value = "string"
        )
      ),
      FormatVersion = "string",
      NextToken = "string",
      MaxResults = 123
    )
