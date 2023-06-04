<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_delete_authorizer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an Authorizer

### Description

Deletes an Authorizer.

### Usage

    apigatewayv2_delete_authorizer(ApiId, AuthorizerId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigatewayv2_delete_authorizer_:_ApiId">ApiId</code></td>
<td><p>[required] The API identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_delete_authorizer_:_AuthorizerId">AuthorizerId</code></td>
<td><p>[required] The authorizer identifier.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_authorizer(
      ApiId = "string",
      AuthorizerId = "string"
    )
