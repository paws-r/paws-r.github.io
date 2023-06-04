<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_import_rest_api</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## A feature of the API Gateway control service for creating a new API from an external API definition file

### Description

A feature of the API Gateway control service for creating a new API from
an external API definition file.

### Usage

    apigateway_import_rest_api(failOnWarnings, parameters, body)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_import_rest_api_:_failOnWarnings">failOnWarnings</code></td>
<td><p>A query parameter to indicate whether to rollback the API
creation (<code>true</code>) or not (<code>false</code>) when a warning
is encountered. The default value is <code>false</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_import_rest_api_:_parameters">parameters</code></td>
<td><p>A key-value map of context-specific query string parameters
specifying the behavior of different API importing operations. The
following shows operation-specific parameters and their supported
values.</p>
<p>To exclude DocumentationParts from the import, set
<code>parameters</code> as <code>ignore=documentation</code>.</p>
<p>To configure the endpoint type, set <code>parameters</code> as
<code>endpointConfigurationTypes=EDGE</code>,
<code>endpointConfigurationTypes=REGIONAL</code>, or
<code>endpointConfigurationTypes=PRIVATE</code>. The default endpoint
type is <code>EDGE</code>.</p>
<p>To handle imported <code>basepath</code>, set <code>parameters</code>
as <code>basepath=ignore</code>, <code>basepath=prepend</code> or
<code>basepath=split</code>.</p>
<p>For example, the AWS CLI command to exclude documentation from the
imported API is:</p>
<p>The AWS CLI command to set the regional endpoint on the imported API
is:</p></td>
</tr>
<tr class="odd">
<td><code id="apigateway_import_rest_api_:_body">body</code></td>
<td><p>[required] The POST request body containing external API
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

    svc$import_rest_api(
      failOnWarnings = TRUE|FALSE,
      parameters = list(
        "string"
      ),
      body = raw
    )
