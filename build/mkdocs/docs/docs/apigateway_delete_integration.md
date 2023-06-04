<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_delete_integration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Represents a delete integration

### Description

Represents a delete integration.

### Usage

    apigateway_delete_integration(restApiId, resourceId, httpMethod)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_delete_integration_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_delete_integration_:_resourceId">resourceId</code></td>
<td><p>[required] Specifies a delete integration request's resource
identifier.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_delete_integration_:_httpMethod">httpMethod</code></td>
<td><p>[required] Specifies a delete integration request's HTTP
method.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_integration(
      restApiId = "string",
      resourceId = "string",
      httpMethod = "string"
    )
