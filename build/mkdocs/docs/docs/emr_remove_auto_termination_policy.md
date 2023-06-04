<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_remove_auto_termination_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes an auto-termination policy from an Amazon EMR cluster

### Description

Removes an auto-termination policy from an Amazon EMR cluster.

### Usage

    emr_remove_auto_termination_policy(ClusterId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emr_remove_auto_termination_policy_:_ClusterId">ClusterId</code></td>
<td><p>[required] Specifies the ID of the Amazon EMR cluster from which
the auto-termination policy will be removed.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$remove_auto_termination_policy(
      ClusterId = "string"
    )
