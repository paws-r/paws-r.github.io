<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_delete_resource_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a resource policy for the specified resource

### Description

Deletes a resource policy for the specified resource. This revokes the
access of the principals specified in the resource policy.

### Usage

    networkmanager_delete_resource_policy(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_delete_resource_policy_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The ARN of the policy to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_resource_policy(
      ResourceArn = "string"
    )
