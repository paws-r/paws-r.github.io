<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_remove_managed_scaling_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a managed scaling policy from a specified Amazon EMR cluster

### Description

Removes a managed scaling policy from a specified Amazon EMR cluster.

### Usage

    emr_remove_managed_scaling_policy(ClusterId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emr_remove_managed_scaling_policy_:_ClusterId">ClusterId</code></td>
<td><p>[required] Specifies the ID of the cluster from which the managed
scaling policy will be removed.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$remove_managed_scaling_policy(
      ClusterId = "string"
    )
