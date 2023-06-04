<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_update_request_validator</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a RequestValidator of a given RestApi

### Description

Updates a RequestValidator of a given RestApi.

### Usage

    apigateway_update_request_validator(restApiId, requestValidatorId,
      patchOperations)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_update_request_validator_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_update_request_validator_:_requestValidatorId">requestValidatorId</code></td>
<td><p>[required] The identifier of RequestValidator to be
updated.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_update_request_validator_:_patchOperations">patchOperations</code></td>
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
      name = "string",
      validateRequestBody = TRUE|FALSE,
      validateRequestParameters = TRUE|FALSE
    )

### Request syntax

    svc$update_request_validator(
      restApiId = "string",
      requestValidatorId = "string",
      patchOperations = list(
        list(
          op = "add"|"remove"|"replace"|"move"|"copy"|"test",
          path = "string",
          value = "string",
          from = "string"
        )
      )
    )
