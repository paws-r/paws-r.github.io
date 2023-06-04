<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_create_request_validator</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a RequestValidator of a given RestApi

### Description

Creates a RequestValidator of a given RestApi.

### Usage

    apigateway_create_request_validator(restApiId, name,
      validateRequestBody, validateRequestParameters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_create_request_validator_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_create_request_validator_:_name">name</code></td>
<td><p>The name of the to-be-created RequestValidator.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_create_request_validator_:_validateRequestBody">validateRequestBody</code></td>
<td><p>A Boolean flag to indicate whether to validate request body
according to the configured model schema for the method
(<code>true</code>) or not (<code>false</code>).</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_create_request_validator_:_validateRequestParameters">validateRequestParameters</code></td>
<td><p>A Boolean flag to indicate whether to validate request
parameters, <code>true</code>, or not <code>false</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      id = "string",
      name = "string",
      validateRequestBody = TRUE|FALSE,
      validateRequestParameters = TRUE|FALSE
    )

### Request syntax

    svc$create_request_validator(
      restApiId = "string",
      name = "string",
      validateRequestBody = TRUE|FALSE,
      validateRequestParameters = TRUE|FALSE
    )
