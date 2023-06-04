<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_get_rest_api</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the RestApi resource in the collection

### Description

Lists the RestApi resource in the collection.

### Usage

    apigateway_get_rest_api(restApiId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigateway_get_rest_api_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
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

    svc$get_rest_api(
      restApiId = "string"
    )
