<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoverycontrolconfig_delete_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete a cluster

### Description

Delete a cluster.

### Usage

    route53recoverycontrolconfig_delete_cluster(ClusterArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoverycontrolconfig_delete_cluster_:_ClusterArn">ClusterArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the cluster that
you're deleting.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_cluster(
      ClusterArn = "string"
    )
