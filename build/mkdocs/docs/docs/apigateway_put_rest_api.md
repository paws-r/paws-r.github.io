<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_put_rest_api</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## A feature of the API Gateway control service for updating an existing API with an input of external API definitions

### Description

A feature of the API Gateway control service for updating an existing
API with an input of external API definitions. The update can take the
form of merging the supplied definition into the existing API or
overwriting the existing API.

### Usage

    apigateway_put_rest_api(restApiId, mode, failOnWarnings, parameters,
      body)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigateway_put_rest_api_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code id="apigateway_put_rest_api_:_mode">mode</code></td>
<td><p>The <code>mode</code> query parameter to specify the update mode.
Valid values are "merge" and "overwrite". By default, the update mode is
"merge".</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_put_rest_api_:_failOnWarnings">failOnWarnings</code></td>
<td><p>A query parameter to indicate whether to rollback the API update
(<code>true</code>) or not (<code>false</code>) when a warning is
encountered. The default value is <code>false</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_put_rest_api_:_parameters">parameters</code></td>
<td><p>Custom header parameters as part of the request. For example, to
exclude DocumentationParts from an imported API, set
<code>ignore=documentation</code> as a <code>parameters</code> value, as
in the AWS CLI command of <code
style="white-space: pre;">⁠aws apigateway import-rest-api --parameters ignore=documentation --body 'file:///path/to/imported-api-body.json'⁠</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="apigateway_put_rest_api_:_body">body</code></td>
<td><p>[required] The PUT request body containing external API
definitions. Currently, only OpenAPI definition JSON/YAML files are
supported. The maximum size of the API definition file is 6MB.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      id = "string",
      name = "string",
      description = "string",
      createdDate = as.POSIXct(
        "2015-01-01"
      ),
      version = "string",
      warnings = list(
        "string"
      ),
      binaryMediaTypes = list(
        "string"
      ),
      minimumCompressionSize = 123,
      apiKeySource = "HEADER"|"AUTHORIZER",
      endpointConfiguration = list(
        types = list(
          "REGIONAL"|"EDGE"|"PRIVATE"
        ),
        vpcEndpointIds = list(
          "string"
        )
      ),
      policy = "string",
      tags = list(
        "string"
      ),
      disableExecuteApiEndpoint = TRUE|FALSE
    )

### Request syntax

    svc$put_rest_api(
      restApiId = "string",
      mode = "merge"|"overwrite",
      failOnWarnings = TRUE|FALSE,
      parameters = list(
        "string"
      ),
      body = raw
    )
