<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_get_resources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists information about a collection of Resource resources

### Description

Lists information about a collection of Resource resources.

### Usage

    apigateway_get_resources(restApiId, position, limit, embed)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_get_resources_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code id="apigateway_get_resources_:_position">position</code></td>
<td><p>The current pagination position in the paged result set.</p></td>
</tr>
<tr class="odd">
<td><code id="apigateway_get_resources_:_limit">limit</code></td>
<td><p>The maximum number of returned results per page. The default
value is 25 and the maximum value is 500.</p></td>
</tr>
<tr class="even">
<td><code id="apigateway_get_resources_:_embed">embed</code></td>
<td><p>A query parameter used to retrieve the specified resources
embedded in the returned Resources resource in the response. This
<code>embed</code> parameter value is a list of comma-separated strings.
Currently, the request supports only retrieval of the embedded Method
resources this way. The query parameter value must be a single-valued
list and contain the <code>"methods"</code> string. For example,
<code>GET /restapis/{restapi_id}/resources?embed=methods</code>.</p></td>
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
      )
    )

### Request syntax

    svc$get_resources(
      restApiId = "string",
      position = "string",
      limit = 123,
      embed = list(
        "string"
      )
    )
