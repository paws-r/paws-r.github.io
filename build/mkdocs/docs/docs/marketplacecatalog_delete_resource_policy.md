<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>marketplacecatalog_delete_resource_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a resource-based policy on an Entity that is identified by its resource ARN

### Description

Deletes a resource-based policy on an Entity that is identified by its
resource ARN.

### Usage

    marketplacecatalog_delete_resource_policy(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="marketplacecatalog_delete_resource_policy_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Entity resource
that is associated with the resource policy.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_resource_policy(
      ResourceArn = "string"
    )
