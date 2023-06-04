<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_delete_resource_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a resource-based policy that is attached to a custom model

### Description

Deletes a resource-based policy that is attached to a custom model.

### Usage

    comprehend_delete_resource_policy(ResourceArn, PolicyRevisionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehend_delete_resource_policy_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the custom model
version that has the policy to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_delete_resource_policy_:_PolicyRevisionId">PolicyRevisionId</code></td>
<td><p>The revision ID of the policy to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_resource_policy(
      ResourceArn = "string",
      PolicyRevisionId = "string"
    )
