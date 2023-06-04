<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_delete_request_validator</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a RequestValidator of a given RestApi

### Description

Deletes a RequestValidator of a given RestApi.

### Usage

    apigateway_delete_request_validator(restApiId, requestValidatorId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_delete_request_validator_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_delete_request_validator_:_requestValidatorId">requestValidatorId</code></td>
<td><p>[required] The identifier of the RequestValidator to be
deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_request_validator(
      restApiId = "string",
      requestValidatorId = "string"
    )
