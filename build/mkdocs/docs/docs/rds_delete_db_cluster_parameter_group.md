<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_delete_db_cluster_parameter_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a specified DB cluster parameter group

### Description

Deletes a specified DB cluster parameter group. The DB cluster parameter
group to be deleted can't be associated with any DB clusters.

For more information on Amazon Aurora, see [What is Amazon
Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
in the *Amazon Aurora User Guide*.

For more information on Multi-AZ DB clusters, see [Multi-AZ DB cluster
deployments](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html)
in the *Amazon RDS User Guide*.

### Usage

    rds_delete_db_cluster_parameter_group(DBClusterParameterGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_delete_db_cluster_parameter_group_:_DBClusterParameterGroupName">DBClusterParameterGroupName</code></td>
<td><p>[required] The name of the DB cluster parameter group.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be the name of an existing DB cluster parameter
group.</p></li>
<li><p>You can't delete a default DB cluster parameter group.</p></li>
<li><p>Can't be associated with any DB clusters.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_db_cluster_parameter_group(
      DBClusterParameterGroupName = "string"
    )
