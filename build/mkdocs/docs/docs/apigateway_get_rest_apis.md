<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_get_rest_apis</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the RestApis resources for your collection

### Description

Lists the RestApis resources for your collection.

### Usage

    apigateway_get_rest_apis(position, limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigateway_get_rest_apis_:_position">position</code></td>
<td><p>The current pagination position in the paged result set.</p></td>
</tr>
<tr class="even">
<td><code id="apigateway_get_rest_apis_:_limit">limit</code></td>
<td><p>The maximum number of returned results per page. The default
value is 25 and the maximum value is 500.</p></td>
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
      )
    )

### Request syntax

    svc$get_rest_apis(
      position = "string",
      limit = 123
    )
