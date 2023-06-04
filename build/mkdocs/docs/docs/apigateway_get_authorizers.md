<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_get_authorizers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describe an existing Authorizers resource

### Description

Describe an existing Authorizers resource.

### Usage

    apigateway_get_authorizers(restApiId, position, limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_get_authorizers_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_get_authorizers_:_position">position</code></td>
<td><p>The current pagination position in the paged result set.</p></td>
</tr>
<tr class="odd">
<td><code id="apigateway_get_authorizers_:_limit">limit</code></td>
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
          type = "TOKEN"|"REQUEST"|"COGNITO_USER_POOLS",
          providerARNs = list(
            "string"
          ),
          authType = "string",
          authorizerUri = "string",
          authorizerCredentials = "string",
          identitySource = "string",
          identityValidationExpression = "string",
          authorizerResultTtlInSeconds = 123
        )
      )
    )

### Request syntax

    svc$get_authorizers(
      restApiId = "string",
      position = "string",
      limit = 123
    )
