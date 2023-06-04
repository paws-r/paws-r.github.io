<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>neptune_remove_role_from_db_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates an Identity and Access Management (IAM) role from a DB cluster

### Description

Disassociates an Identity and Access Management (IAM) role from a DB
cluster.

### Usage

    neptune_remove_role_from_db_cluster(DBClusterIdentifier, RoleArn,
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
id="neptune_remove_role_from_db_cluster_:_DBClusterIdentifier">DBClusterIdentifier</code></td>
<td><p>[required] The name of the DB cluster to disassociate the IAM
role from.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_remove_role_from_db_cluster_:_RoleArn">RoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the IAM role to
disassociate from the DB cluster, for example <code
style="white-space: pre;">⁠arn:aws:iam::123456789012:role/NeptuneAccessRole⁠</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_remove_role_from_db_cluster_:_FeatureName">FeatureName</code></td>
<td><p>The name of the feature for the DB cluster that the IAM role is
to be disassociated from. For the list of supported feature names, see
<code>describe_db_engine_versions</code>.</p></td>
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
