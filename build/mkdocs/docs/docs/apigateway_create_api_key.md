<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_create_api_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create an ApiKey resource

### Description

Create an ApiKey resource.

### Usage

    apigateway_create_api_key(name, description, enabled,
      generateDistinctId, value, stageKeys, customerId, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigateway_create_api_key_:_name">name</code></td>
<td><p>The name of the ApiKey.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_create_api_key_:_description">description</code></td>
<td><p>The description of the ApiKey.</p></td>
</tr>
<tr class="odd">
<td><code id="apigateway_create_api_key_:_enabled">enabled</code></td>
<td><p>Specifies whether the ApiKey can be used by callers.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_create_api_key_:_generateDistinctId">generateDistinctId</code></td>
<td><p>Specifies whether (<code>true</code>) or not (<code>false</code>)
the key identifier is distinct from the created API key value. This
parameter is deprecated and should not be used.</p></td>
</tr>
<tr class="odd">
<td><code id="apigateway_create_api_key_:_value">value</code></td>
<td><p>Specifies a value of the API key.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_create_api_key_:_stageKeys">stageKeys</code></td>
<td><p>DEPRECATED FOR USAGE PLANS - Specifies stages associated with the
API key.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_create_api_key_:_customerId">customerId</code></td>
<td><p>An AWS Marketplace customer identifier , when integrating with
the AWS SaaS Marketplace.</p></td>
</tr>
<tr class="even">
<td><code id="apigateway_create_api_key_:_tags">tags</code></td>
<td><p>The key-value map of strings. The valid character set is
[a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not
start with <code style="white-space: pre;">⁠aws:⁠</code>. The tag value
can be up to 256 characters.</p></td>
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

    svc$create_api_key(
      name = "string",
      description = "string",
      enabled = TRUE|FALSE,
      generateDistinctId = TRUE|FALSE,
      value = "string",
      stageKeys = list(
        list(
          restApiId = "string",
          stageName = "string"
        )
      ),
      customerId = "string",
      tags = list(
        "string"
      )
    )
