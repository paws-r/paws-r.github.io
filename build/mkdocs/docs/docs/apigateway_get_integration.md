<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_get_integration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get the integration settings

### Description

Get the integration settings.

### Usage

    apigateway_get_integration(restApiId, resourceId, httpMethod)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_get_integration_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_get_integration_:_resourceId">resourceId</code></td>
<td><p>[required] Specifies a get integration request's resource
identifier</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_get_integration_:_httpMethod">httpMethod</code></td>
<td><p>[required] Specifies a get integration request's HTTP
method.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
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
    )

### Request syntax

    svc$get_integration(
      restApiId = "string",
      resourceId = "string",
      httpMethod = "string"
    )
