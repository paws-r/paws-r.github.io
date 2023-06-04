<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_delete_cluster_subnet_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified cluster subnet group

### Description

Deletes the specified cluster subnet group.

### Usage

    redshift_delete_cluster_subnet_group(ClusterSubnetGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_delete_cluster_subnet_group_:_ClusterSubnetGroupName">ClusterSubnetGroupName</code></td>
<td><p>[required] The name of the cluster subnet group name to be
deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_cluster_subnet_group(
      ClusterSubnetGroupName = "string"
    )
