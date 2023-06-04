<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_update_api_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Changes information about an ApiKey resource

### Description

Changes information about an ApiKey resource.

### Usage

    apigateway_update_api_key(apiKey, patchOperations)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigateway_update_api_key_:_apiKey">apiKey</code></td>
<td><p>[required] The identifier of the ApiKey resource to be
updated.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_update_api_key_:_patchOperations">patchOperations</code></td>
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

    svc$update_api_key(
      apiKey = "string",
      patchOperations = list(
        list(
          op = "add"|"remove"|"replace"|"move"|"copy"|"test",
          path = "string",
          value = "string",
          from = "string"
        )
      )
    )
