<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_get_api_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the current ApiKey resource

### Description

Gets information about the current ApiKey resource.

### Usage

    apigateway_get_api_key(apiKey, includeValue)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigateway_get_api_key_:_apiKey">apiKey</code></td>
<td><p>[required] The identifier of the ApiKey resource.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_get_api_key_:_includeValue">includeValue</code></td>
<td><p>A boolean flag to specify whether (<code>true</code>) or not
(<code>false</code>) the result contains the key value.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      id = "string",
      value = "string",
      name = "string",
      customerId = "string",
      description = "string",
      enabled = TRUE|FALSE,
      createdDate = as.POSIXct(
        "2015-01-01"
      ),
      lastUpdatedDate = as.POSIXct(
        "2015-01-01"
      ),
      stageKeys = list(
        "string"
      ),
      tags = list(
        "string"
      )
    )

### Request syntax

    svc$get_api_key(
      apiKey = "string",
      includeValue = TRUE|FALSE
    )
