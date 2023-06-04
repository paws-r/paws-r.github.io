<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_remove_auto_scaling_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes an automatic scaling policy from a specified instance group within an Amazon EMR cluster

### Description

Removes an automatic scaling policy from a specified instance group
within an Amazon EMR cluster.

### Usage

    emr_remove_auto_scaling_policy(ClusterId, InstanceGroupId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emr_remove_auto_scaling_policy_:_ClusterId">ClusterId</code></td>
<td><p>[required] Specifies the ID of a cluster. The instance group to
which the automatic scaling policy is applied is within this
cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="emr_remove_auto_scaling_policy_:_InstanceGroupId">InstanceGroupId</code></td>
<td><p>[required] Specifies the ID of the instance group to which the
scaling policy is applied.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$remove_auto_scaling_policy(
      ClusterId = "string",
      InstanceGroupId = "string"
    )
