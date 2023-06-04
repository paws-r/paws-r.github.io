<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_delete_authorizer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an existing Authorizer resource

### Description

Deletes an existing Authorizer resource.

### Usage

    apigateway_delete_authorizer(restApiId, authorizerId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_delete_authorizer_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_delete_authorizer_:_authorizerId">authorizerId</code></td>
<td><p>[required] The identifier of the Authorizer resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_authorizer(
      restApiId = "string",
      authorizerId = "string"
    )
