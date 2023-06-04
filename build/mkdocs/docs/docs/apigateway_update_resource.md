<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_update_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Changes information about a Resource resource

### Description

Changes information about a Resource resource.

### Usage

    apigateway_update_resource(restApiId, resourceId, patchOperations)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_update_resource_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_update_resource_:_resourceId">resourceId</code></td>
<td><p>[required] The identifier of the Resource resource.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_update_resource_:_patchOperations">patchOperations</code></td>
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

    svc$update_resource(
      restApiId = "string",
      resourceId = "string",
      patchOperations = list(
        list(
          op = "add"|"remove"|"replace"|"move"|"copy"|"test",
          path = "string",
          value = "string",
          from = "string"
        )
      )
    )
