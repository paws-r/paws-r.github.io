<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_get_api_keys</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the current ApiKeys resource

### Description

Gets information about the current ApiKeys resource.

### Usage

    apigateway_get_api_keys(position, limit, nameQuery, customerId,
      includeValues)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigateway_get_api_keys_:_position">position</code></td>
<td><p>The current pagination position in the paged result set.</p></td>
</tr>
<tr class="even">
<td><code id="apigateway_get_api_keys_:_limit">limit</code></td>
<td><p>The maximum number of returned results per page. The default
value is 25 and the maximum value is 500.</p></td>
</tr>
<tr class="odd">
<td><code id="apigateway_get_api_keys_:_nameQuery">nameQuery</code></td>
<td><p>The name of queried API keys.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_get_api_keys_:_customerId">customerId</code></td>
<td><p>The identifier of a customer in AWS Marketplace or an external
system, such as a developer portal.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_get_api_keys_:_includeValues">includeValues</code></td>
<td><p>A boolean flag to specify whether (<code>true</code>) or not
(<code>false</code>) the result contains key values.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      warnings = list(
        "string"
      ),
      position = "string",
      items = list(
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
      )
    )

### Request syntax

    svc$get_api_keys(
      position = "string",
      limit = 123,
      nameQuery = "string",
      customerId = "string",
      includeValues = TRUE|FALSE
    )
