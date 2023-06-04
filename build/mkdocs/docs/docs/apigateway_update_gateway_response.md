<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_update_gateway_response</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a GatewayResponse of a specified response type on the given RestApi

### Description

Updates a GatewayResponse of a specified response type on the given
RestApi.

### Usage

    apigateway_update_gateway_response(restApiId, responseType,
      patchOperations)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_update_gateway_response_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_update_gateway_response_:_responseType">responseType</code></td>
<td><p>[required] The response type of the associated
GatewayResponse.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_update_gateway_response_:_patchOperations">patchOperations</code></td>
<td><p>For more information about supported patch operations, see <a
href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch
Operations</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      responseType = "DEFAULT_4XX"|"DEFAULT_5XX"|"RESOURCE_NOT_FOUND"|"UNAUTHORIZED"|"INVALID_API_KEY"|"ACCESS_DENIED"|"AUTHORIZER_FAILURE"|"AUTHORIZER_CONFIGURATION_ERROR"|"INVALID_SIGNATURE"|"EXPIRED_TOKEN"|"MISSING_AUTHENTICATION_TOKEN"|"INTEGRATION_FAILURE"|"INTEGRATION_TIMEOUT"|"API_CONFIGURATION_ERROR"|"UNSUPPORTED_MEDIA_TYPE"|"BAD_REQUEST_PARAMETERS"|"BAD_REQUEST_BODY"|"REQUEST_TOO_LARGE"|"THROTTLED"|"QUOTA_EXCEEDED"|"WAF_FILTERED",
      statusCode = "string",
      responseParameters = list(
        "string"
      ),
      responseTemplates = list(
        "string"
      ),
      defaultResponse = TRUE|FALSE
    )

### Request syntax

    svc$update_gateway_response(
      restApiId = "string",
      responseType = "DEFAULT_4XX"|"DEFAULT_5XX"|"RESOURCE_NOT_FOUND"|"UNAUTHORIZED"|"INVALID_API_KEY"|"ACCESS_DENIED"|"AUTHORIZER_FAILURE"|"AUTHORIZER_CONFIGURATION_ERROR"|"INVALID_SIGNATURE"|"EXPIRED_TOKEN"|"MISSING_AUTHENTICATION_TOKEN"|"INTEGRATION_FAILURE"|"INTEGRATION_TIMEOUT"|"API_CONFIGURATION_ERROR"|"UNSUPPORTED_MEDIA_TYPE"|"BAD_REQUEST_PARAMETERS"|"BAD_REQUEST_BODY"|"REQUEST_TOO_LARGE"|"THROTTLED"|"QUOTA_EXCEEDED"|"WAF_FILTERED",
      patchOperations = list(
        list(
          op = "add"|"remove"|"replace"|"move"|"copy"|"test",
          path = "string",
          value = "string",
          from = "string"
        )
      )
    )
