<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_update_authorizer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an existing Authorizer resource

### Description

Updates an existing Authorizer resource.

### Usage

    apigateway_update_authorizer(restApiId, authorizerId, patchOperations)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_update_authorizer_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_update_authorizer_:_authorizerId">authorizerId</code></td>
<td><p>[required] The identifier of the Authorizer resource.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_update_authorizer_:_patchOperations">patchOperations</code></td>
<td><p>For more information about supported patch operations, see <a
href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch
Operations</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

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

### Request syntax

    svc$update_authorizer(
      restApiId = "string",
      authorizerId = "string",
      patchOperations = list(
        list(
          op = "add"|"remove"|"replace"|"move"|"copy"|"test",
          path = "string",
          value = "string",
          from = "string"
        )
      )
    )
