<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_delete_gateway_response</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Clears any customization of a GatewayResponse of a specified response type on the given RestApi and resets it with the default settings

### Description

Clears any customization of a GatewayResponse of a specified response
type on the given RestApi and resets it with the default settings.

### Usage

    apigateway_delete_gateway_response(restApiId, responseType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_delete_gateway_response_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_delete_gateway_response_:_responseType">responseType</code></td>
<td><p>[required] The response type of the associated
GatewayResponse.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_gateway_response(
      restApiId = "string",
      responseType = "DEFAULT_4XX"|"DEFAULT_5XX"|"RESOURCE_NOT_FOUND"|"UNAUTHORIZED"|"INVALID_API_KEY"|"ACCESS_DENIED"|"AUTHORIZER_FAILURE"|"AUTHORIZER_CONFIGURATION_ERROR"|"INVALID_SIGNATURE"|"EXPIRED_TOKEN"|"MISSING_AUTHENTICATION_TOKEN"|"INTEGRATION_FAILURE"|"INTEGRATION_TIMEOUT"|"API_CONFIGURATION_ERROR"|"UNSUPPORTED_MEDIA_TYPE"|"BAD_REQUEST_PARAMETERS"|"BAD_REQUEST_BODY"|"REQUEST_TOO_LARGE"|"THROTTLED"|"QUOTA_EXCEEDED"|"WAF_FILTERED"
    )
