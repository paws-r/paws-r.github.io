<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmincidents_delete_resource_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the resource policy that Resource Access Manager uses to share your Incident Manager resource

### Description

Deletes the resource policy that Resource Access Manager uses to share
your Incident Manager resource.

### Usage

    ssmincidents_delete_resource_policy(policyId, resourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmincidents_delete_resource_policy_:_policyId">policyId</code></td>
<td><p>[required] The ID of the resource policy you're
deleting.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmincidents_delete_resource_policy_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource you're
deleting the policy from.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_resource_policy(
      policyId = "string",
      resourceArn = "string"
    )
