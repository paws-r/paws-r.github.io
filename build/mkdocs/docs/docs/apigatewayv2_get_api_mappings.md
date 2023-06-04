<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_get_api_mappings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets API mappings

### Description

Gets API mappings.

### Usage

    apigatewayv2_get_api_mappings(DomainName, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigatewayv2_get_api_mappings_:_DomainName">DomainName</code></td>
<td><p>[required] The domain name.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_get_api_mappings_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of elements to be returned for this
resource.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_get_api_mappings_:_NextToken">NextToken</code></td>
<td><p>The next page of elements from this collection. Not valid for the
last element of the collection.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Items = list(
        list(
          ApiId = "string",
          ApiMappingId = "string",
          ApiMappingKey = "string",
          Stage = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_api_mappings(
      DomainName = "string",
      MaxResults = "string",
      NextToken = "string"
    )
