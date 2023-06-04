<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_delete_documentation_part</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a documentation part

### Description

Deletes a documentation part

### Usage

    apigateway_delete_documentation_part(restApiId, documentationPartId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_delete_documentation_part_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_delete_documentation_part_:_documentationPartId">documentationPartId</code></td>
<td><p>[required] The identifier of the to-be-deleted documentation
part.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_documentation_part(
      restApiId = "string",
      documentationPartId = "string"
    )
