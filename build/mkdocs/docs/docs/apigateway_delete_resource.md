<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_delete_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a Resource resource

### Description

Deletes a Resource resource.

### Usage

    apigateway_delete_resource(restApiId, resourceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_delete_resource_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_delete_resource_:_resourceId">resourceId</code></td>
<td><p>[required] The identifier of the Resource resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_resource(
      restApiId = "string",
      resourceId = "string"
    )
