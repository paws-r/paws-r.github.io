<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_get_method</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describe an existing Method resource

### Description

Describe an existing Method resource.

### Usage

    apigateway_get_method(restApiId, resourceId, httpMethod)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigateway_get_method_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code id="apigateway_get_method_:_resourceId">resourceId</code></td>
<td><p>[required] The Resource identifier for the Method
resource.</p></td>
</tr>
<tr class="odd">
<td><code id="apigateway_get_method_:_httpMethod">httpMethod</code></td>
<td><p>[required] Specifies the method request's HTTP method
type.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      httpMethod = "string",
      authorizationType = "string",
      authorizerId = "string",
      apiKeyRequired = TRUE|FALSE,
      requestValidatorId = "string",
      operationName = "string",
      requestParameters = list(
        TRUE|FALSE
      ),
      requestModels = list(
        "string"
      ),
      methodResponses = list(
        list(
          statusCode = "string",
          responseParameters = list(
            TRUE|FALSE
          ),
          responseModels = list(
            "string"
          )
        )
      ),
      methodIntegration = list(
        type = "HTTP"|"AWS"|"MOCK"|"HTTP_PROXY"|"AWS_PROXY",
        httpMethod = "string",
        uri = "string",
        connectionType = "INTERNET"|"VPC_LINK",
        connectionId = "string",
        credentials = "string",
        requestParameters = list(
          "string"
        ),
        requestTemplates = list(
          "string"
        ),
        passthroughBehavior = "string",
        contentHandling = "CONVERT_TO_BINARY"|"CONVERT_TO_TEXT",
        timeoutInMillis = 123,
        cacheNamespace = "string",
        cacheKeyParameters = list(
          "string"
        ),
        integrationResponses = list(
          list(
            statusCode = "string",
            selectionPattern = "string",
            responseParameters = list(
              "string"
            ),
            responseTemplates = list(
              "string"
            ),
            contentHandling = "CONVERT_TO_BINARY"|"CONVERT_TO_TEXT"
          )
        ),
        tlsConfig = list(
          insecureSkipVerification = TRUE|FALSE
        )
      ),
      authorizationScopes = list(
        "string"
      )
    )

### Request syntax

    svc$get_method(
      restApiId = "string",
      resourceId = "string",
      httpMethod = "string"
    )
