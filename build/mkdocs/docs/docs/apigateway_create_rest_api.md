<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_create_rest_api</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new RestApi resource

### Description

Creates a new RestApi resource.

### Usage

    apigateway_create_rest_api(name, description, version, cloneFrom,
      binaryMediaTypes, minimumCompressionSize, apiKeySource,
      endpointConfiguration, policy, tags, disableExecuteApiEndpoint)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigateway_create_rest_api_:_name">name</code></td>
<td><p>[required] The name of the RestApi.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_create_rest_api_:_description">description</code></td>
<td><p>The description of the RestApi.</p></td>
</tr>
<tr class="odd">
<td><code id="apigateway_create_rest_api_:_version">version</code></td>
<td><p>A version identifier for the API.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_create_rest_api_:_cloneFrom">cloneFrom</code></td>
<td><p>The ID of the RestApi that you want to clone from.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_create_rest_api_:_binaryMediaTypes">binaryMediaTypes</code></td>
<td><p>The list of binary media types supported by the RestApi. By
default, the RestApi supports only UTF-8-encoded text payloads.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_create_rest_api_:_minimumCompressionSize">minimumCompressionSize</code></td>
<td><p>A nullable integer that is used to enable compression (with
non-negative between 0 and 10485760 (10M) bytes, inclusive) or disable
compression (with a null value) on an API. When compression is enabled,
compression or decompression is not applied on the payload if the
payload size is smaller than this value. Setting it to zero allows
compression for any payload size.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_create_rest_api_:_apiKeySource">apiKeySource</code></td>
<td><p>The source of the API key for metering requests according to a
usage plan. Valid values are: \&gt;<code>HEADER</code> to read the API
key from the <code>X-API-Key</code> header of a request.
<code>AUTHORIZER</code> to read the API key from the
<code>UsageIdentifierKey</code> from a custom authorizer.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_create_rest_api_:_endpointConfiguration">endpointConfiguration</code></td>
<td><p>The endpoint configuration of this RestApi showing the endpoint
types of the API.</p></td>
</tr>
<tr class="odd">
<td><code id="apigateway_create_rest_api_:_policy">policy</code></td>
<td><p>A stringified JSON policy document that applies to this RestApi
regardless of the caller and Method configuration.</p></td>
</tr>
<tr class="even">
<td><code id="apigateway_create_rest_api_:_tags">tags</code></td>
<td><p>The key-value map of strings. The valid character set is
[a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not
start with <code style="white-space: pre;">⁠aws:⁠</code>. The tag value
can be up to 256 characters.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_create_rest_api_:_disableExecuteApiEndpoint">disableExecuteApiEndpoint</code></td>
<td><p>Specifies whether clients can invoke your API by using the
default <code>execute-api</code> endpoint. By default, clients can
invoke your API with the default <code
style="white-space: pre;">⁠https://{api_id}.execute-api.{region}.amazonaws.com⁠</code>
endpoint. To require that clients use a custom domain name to invoke
your API, disable the default endpoint</p></td>
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

    svc$create_rest_api(
      name = "string",
      description = "string",
      version = "string",
      cloneFrom = "string",
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
