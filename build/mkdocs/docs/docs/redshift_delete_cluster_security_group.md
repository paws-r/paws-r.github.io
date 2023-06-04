<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_delete_cluster_security_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an Amazon Redshift security group

### Description

Deletes an Amazon Redshift security group.

You cannot delete a security group that is associated with any clusters.
You cannot delete the default security group.

For information about managing security groups, go to [Amazon Redshift
Cluster Security
Groups](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html)
in the *Amazon Redshift Cluster Management Guide*.

### Usage

    redshift_delete_cluster_security_group(ClusterSecurityGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_delete_cluster_security_group_:_ClusterSecurityGroupName">ClusterSecurityGroupName</code></td>
<td><p>[required] The name of the cluster security group to be
deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_cluster_security_group(
      ClusterSecurityGroupName = "string"
    )
