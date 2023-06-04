<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_get_models</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes existing Models defined for a RestApi resource

### Description

Describes existing Models defined for a RestApi resource.

### Usage

    apigateway_get_models(restApiId, position, limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigateway_get_models_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code id="apigateway_get_models_:_position">position</code></td>
<td><p>The current pagination position in the paged result set.</p></td>
</tr>
<tr class="odd">
<td><code id="apigateway_get_models_:_limit">limit</code></td>
<td><p>The maximum number of returned results per page. The default
value is 25 and the maximum value is 500.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      position = "string",
      items = list(
        list(
          id = "string",
          name = "string",
          description = "string",
          schema = "string",
          contentType = "string"
        )
      )
    )

### Request syntax

    svc$get_models(
      restApiId = "string",
      position = "string",
      limit = 123
    )
