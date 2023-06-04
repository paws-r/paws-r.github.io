<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_get_gateway_responses</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the GatewayResponses collection on the given RestApi

### Description

Gets the GatewayResponses collection on the given RestApi. If an API
developer has not added any definitions for gateway responses, the
result will be the API Gateway-generated default GatewayResponses
collection for the supported response types.

### Usage

    apigateway_get_gateway_responses(restApiId, position, limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_get_gateway_responses_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_get_gateway_responses_:_position">position</code></td>
<td><p>The current pagination position in the paged result set. The
GatewayResponse collection does not support pagination and the position
does not apply here.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_get_gateway_responses_:_limit">limit</code></td>
<td><p>The maximum number of returned results per page. The default
value is 25 and the maximum value is 500. The GatewayResponses
collection does not support pagination and the limit does not apply
here.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      position = "string",
      items = list(
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
      )
    )

### Request syntax

    svc$get_gateway_responses(
      restApiId = "string",
      position = "string",
      limit = 123
    )
