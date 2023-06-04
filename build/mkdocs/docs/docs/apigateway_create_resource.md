<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_create_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a Resource resource

### Description

Creates a Resource resource.

### Usage

    apigateway_create_resource(restApiId, parentId, pathPart)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_create_resource_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_create_resource_:_parentId">parentId</code></td>
<td><p>[required] The parent resource's identifier.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_create_resource_:_pathPart">pathPart</code></td>
<td><p>[required] The last path segment for this resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      id = "string",
      parentId = "string",
      pathPart = "string",
      path = "string",
      resourceMethods = list(
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
      )
    )

### Request syntax

    svc$create_resource(
      restApiId = "string",
      parentId = "string",
      pathPart = "string"
    )
