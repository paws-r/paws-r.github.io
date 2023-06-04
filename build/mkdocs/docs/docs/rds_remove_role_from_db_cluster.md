<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_remove_role_from_db_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the asssociation of an Amazon Web Services Identity and Access Management (IAM) role from a DB cluster

### Description

Removes the asssociation of an Amazon Web Services Identity and Access
Management (IAM) role from a DB cluster.

For more information on Amazon Aurora DB clusters, see [What is Amazon
Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
in the *Amazon Aurora User Guide*.

For more information on Multi-AZ DB clusters, see [Multi-AZ DB cluster
deployments](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html)
in the *Amazon RDS User Guide.*

### Usage

    rds_remove_role_from_db_cluster(DBClusterIdentifier, RoleArn,
      FeatureName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_remove_role_from_db_cluster_:_DBClusterIdentifier">DBClusterIdentifier</code></td>
<td><p>[required] The name of the DB cluster to disassociate the IAM
role from.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_remove_role_from_db_cluster_:_RoleArn">RoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the IAM role to
disassociate from the Aurora DB cluster, for example <code
style="white-space: pre;">⁠arn:aws:iam::123456789012:role/AuroraAccessRole⁠</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_remove_role_from_db_cluster_:_FeatureName">FeatureName</code></td>
<td><p>The name of the feature for the DB cluster that the IAM role is
to be disassociated from. For information about supported feature names,
see DBEngineVersion.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$remove_role_from_db_cluster(
      DBClusterIdentifier = "string",
      RoleArn = "string",
      FeatureName = "string"
    )
