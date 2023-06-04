<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dlm_delete_lifecycle_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified lifecycle policy and halts the automated operations that the policy specified

### Description

Deletes the specified lifecycle policy and halts the automated
operations that the policy specified.

For more information about deleting a policy, see [Delete lifecycle
policies](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/view-modify-delete.html#delete).

### Usage

    dlm_delete_lifecycle_policy(PolicyId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dlm_delete_lifecycle_policy_:_PolicyId">PolicyId</code></td>
<td><p>[required] The identifier of the lifecycle policy.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_lifecycle_policy(
      PolicyId = "string"
    )
