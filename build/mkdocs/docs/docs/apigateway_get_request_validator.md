<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_get_request_validator</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a RequestValidator of a given RestApi

### Description

Gets a RequestValidator of a given RestApi.

### Usage

    apigateway_get_request_validator(restApiId, requestValidatorId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_get_request_validator_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_get_request_validator_:_requestValidatorId">requestValidatorId</code></td>
<td><p>[required] The identifier of the RequestValidator to be
retrieved.</p></td>
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

    svc$get_request_validator(
      restApiId = "string",
      requestValidatorId = "string"
    )
