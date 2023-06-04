<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_get_integration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets an Integration

### Description

Gets an Integration.

### Usage

    apigatewayv2_get_integration(ApiId, IntegrationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigatewayv2_get_integration_:_ApiId">ApiId</code></td>
<td><p>[required] The API identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_get_integration_:_IntegrationId">IntegrationId</code></td>
<td><p>[required] The integration ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApiGatewayManaged = TRUE|FALSE,
      ConnectionId = "string",
      ConnectionType = "INTERNET"|"VPC_LINK",
      ContentHandlingStrategy = "CONVERT_TO_BINARY"|"CONVERT_TO_TEXT",
      CredentialsArn = "string",
      Description = "string",
      IntegrationId = "string",
      IntegrationMethod = "string",
      IntegrationResponseSelectionExpression = "string",
      IntegrationSubtype = "string",
      IntegrationType = "AWS"|"HTTP"|"MOCK"|"HTTP_PROXY"|"AWS_PROXY",
      IntegrationUri = "string",
      PassthroughBehavior = "WHEN_NO_MATCH"|"NEVER"|"WHEN_NO_TEMPLATES",
      PayloadFormatVersion = "string",
      RequestParameters = list(
        "string"
      ),
      RequestTemplates = list(
        "string"
      ),
      ResponseParameters = list(
        list(
          "string"
        )
      ),
      TemplateSelectionExpression = "string",
      TimeoutInMillis = 123,
      TlsConfig = list(
        ServerNameToVerify = "string"
      )
    )

### Request syntax

    svc$get_integration(
      ApiId = "string",
      IntegrationId = "string"
    )
