<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_add_role_to_db_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates an Identity and Access Management (IAM) role with a DB cluster

### Description

Associates an Identity and Access Management (IAM) role with a DB
cluster.

### Usage

    rds_add_role_to_db_cluster(DBClusterIdentifier, RoleArn, FeatureName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_add_role_to_db_cluster_:_DBClusterIdentifier">DBClusterIdentifier</code></td>
<td><p>[required] The name of the DB cluster to associate the IAM role
with.</p></td>
</tr>
<tr class="even">
<td><code id="rds_add_role_to_db_cluster_:_RoleArn">RoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the IAM role to
associate with the Aurora DB cluster, for example <code
style="white-space: pre;">⁠arn:aws:iam::123456789012:role/AuroraAccessRole⁠</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_add_role_to_db_cluster_:_FeatureName">FeatureName</code></td>
<td><p>The name of the feature for the DB cluster that the IAM role is
to be associated with. For information about supported feature names,
see DBEngineVersion.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$add_role_to_db_cluster(
      DBClusterIdentifier = "string",
      RoleArn = "string",
      FeatureName = "string"
    )
