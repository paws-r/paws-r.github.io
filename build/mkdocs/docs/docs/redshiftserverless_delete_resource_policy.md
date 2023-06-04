<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshiftserverless_delete_resource_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified resource policy

### Description

Deletes the specified resource policy.

### Usage

    redshiftserverless_delete_resource_policy(resourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshiftserverless_delete_resource_policy_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the policy to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_resource_policy(
      resourceArn = "string"
    )
