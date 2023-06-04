<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_get_authorizer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets an Authorizer

### Description

Gets an Authorizer.

### Usage

    apigatewayv2_get_authorizer(ApiId, AuthorizerId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigatewayv2_get_authorizer_:_ApiId">ApiId</code></td>
<td><p>[required] The API identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_get_authorizer_:_AuthorizerId">AuthorizerId</code></td>
<td><p>[required] The authorizer identifier.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AuthorizerCredentialsArn = "string",
      AuthorizerId = "string",
      AuthorizerPayloadFormatVersion = "string",
      AuthorizerResultTtlInSeconds = 123,
      AuthorizerType = "REQUEST"|"JWT",
      AuthorizerUri = "string",
      EnableSimpleResponses = TRUE|FALSE,
      IdentitySource = list(
        "string"
      ),
      IdentityValidationExpression = "string",
      JwtConfiguration = list(
        Audience = list(
          "string"
        ),
        Issuer = "string"
      ),
      Name = "string"
    )

### Request syntax

    svc$get_authorizer(
      ApiId = "string",
      AuthorizerId = "string"
    )
