<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_delete_continuous_deployment_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a continuous deployment policy

### Description

Deletes a continuous deployment policy.

You cannot delete a continuous deployment policy that's attached to a
primary distribution. First update your distribution to remove the
continuous deployment policy, then you can delete the policy.

### Usage

    cloudfront_delete_continuous_deployment_policy(Id, IfMatch)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_delete_continuous_deployment_policy_:_Id">Id</code></td>
<td><p>[required] The identifier of the continuous deployment policy
that you are deleting.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_delete_continuous_deployment_policy_:_IfMatch">IfMatch</code></td>
<td><p>The current version (<code>ETag</code> value) of the continuous
deployment policy that you are deleting.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_continuous_deployment_policy(
      Id = "string",
      IfMatch = "string"
    )
