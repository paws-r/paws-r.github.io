<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_get_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists information about a resource

### Description

Lists information about a resource.

### Usage

    apigateway_get_resource(restApiId, resourceId, embed)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigateway_get_resource_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_get_resource_:_resourceId">resourceId</code></td>
<td><p>[required] The identifier for the Resource resource.</p></td>
</tr>
<tr class="odd">
<td><code id="apigateway_get_resource_:_embed">embed</code></td>
<td><p>A query parameter to retrieve the specified resources embedded in
the returned Resource representation in the response. This
<code>embed</code> parameter value is a list of comma-separated strings.
Currently, the request supports only retrieval of the embedded Method
resources this way. The query parameter value must be a single-valued
list and contain the <code>"methods"</code> string. For example,
<code>GET /restapis/{restapi_id}/resources/{resource_id}?embed=methods</code>.</p></td>
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

    svc$get_resource(
      restApiId = "string",
      resourceId = "string",
      embed = list(
        "string"
      )
    )
