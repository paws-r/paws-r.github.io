<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>marketplacecatalog_put_resource_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attaches a resource-based policy to an Entity

### Description

Attaches a resource-based policy to an Entity. Examples of an entity
include: `AmiProduct` and `ContainerProduct`.

### Usage

    marketplacecatalog_put_resource_policy(ResourceArn, Policy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="marketplacecatalog_put_resource_policy_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Entity resource
you want to associate with a resource policy.</p></td>
</tr>
<tr class="even">
<td><code
id="marketplacecatalog_put_resource_policy_:_Policy">Policy</code></td>
<td><p>[required] The policy document to set; formatted in
JSON.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_resource_policy(
      ResourceArn = "string",
      Policy = "string"
    )
