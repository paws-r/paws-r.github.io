<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_get_models</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the Models for an API

### Description

Gets the Models for an API.

### Usage

    apigatewayv2_get_models(ApiId, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigatewayv2_get_models_:_ApiId">ApiId</code></td>
<td><p>[required] The API identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_get_models_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of elements to be returned for this
resource.</p></td>
</tr>
<tr class="odd">
<td><code id="apigatewayv2_get_models_:_NextToken">NextToken</code></td>
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
          ContentType = "string",
          Description = "string",
          ModelId = "string",
          Name = "string",
          Schema = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_models(
      ApiId = "string",
      MaxResults = "string",
      NextToken = "string"
    )
