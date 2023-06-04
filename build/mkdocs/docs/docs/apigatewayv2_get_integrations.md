<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_get_integrations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the Integrations for an API

### Description

Gets the Integrations for an API.

### Usage

    apigatewayv2_get_integrations(ApiId, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigatewayv2_get_integrations_:_ApiId">ApiId</code></td>
<td><p>[required] The API identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_get_integrations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of elements to be returned for this
resource.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_get_integrations_:_NextToken">NextToken</code></td>
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_integrations(
      ApiId = "string",
      MaxResults = "string",
      NextToken = "string"
    )
