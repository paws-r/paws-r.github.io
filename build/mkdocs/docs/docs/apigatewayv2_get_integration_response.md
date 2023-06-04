<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_get_integration_response</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets an IntegrationResponses

### Description

Gets an IntegrationResponses.

### Usage

    apigatewayv2_get_integration_response(ApiId, IntegrationId,
      IntegrationResponseId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigatewayv2_get_integration_response_:_ApiId">ApiId</code></td>
<td><p>[required] The API identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_get_integration_response_:_IntegrationId">IntegrationId</code></td>
<td><p>[required] The integration ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_get_integration_response_:_IntegrationResponseId">IntegrationResponseId</code></td>
<td><p>[required] The integration response ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ContentHandlingStrategy = "CONVERT_TO_BINARY"|"CONVERT_TO_TEXT",
      IntegrationResponseId = "string",
      IntegrationResponseKey = "string",
      ResponseParameters = list(
        "string"
      ),
      ResponseTemplates = list(
        "string"
      ),
      TemplateSelectionExpression = "string"
    )

### Request syntax

    svc$get_integration_response(
      ApiId = "string",
      IntegrationId = "string",
      IntegrationResponseId = "string"
    )
