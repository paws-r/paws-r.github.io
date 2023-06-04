<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_copy_db_cluster_parameter_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Copies the specified DB cluster parameter group

### Description

Copies the specified DB cluster parameter group.

### Usage

    rds_copy_db_cluster_parameter_group(
      SourceDBClusterParameterGroupIdentifier,
      TargetDBClusterParameterGroupIdentifier,
      TargetDBClusterParameterGroupDescription, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_copy_db_cluster_parameter_group_:_SourceDBClusterParameterGroupIdentifier">SourceDBClusterParameterGroupIdentifier</code></td>
<td><p>[required] The identifier or Amazon Resource Name (ARN) for the
source DB cluster parameter group. For information about creating an
ARN, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing">Constructing
an ARN for Amazon RDS</a> in the <em>Amazon Aurora User Guide</em>.</p>
<p>Constraints:</p>
<ul>
<li><p>Must specify a valid DB cluster parameter group.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="rds_copy_db_cluster_parameter_group_:_TargetDBClusterParameterGroupIdentifier">TargetDBClusterParameterGroupIdentifier</code></td>
<td><p>[required] The identifier for the copied DB cluster parameter
group.</p>
<p>Constraints:</p>
<ul>
<li><p>Can't be null, empty, or blank</p></li>
<li><p>Must contain from 1 to 255 letters, numbers, or hyphens</p></li>
<li><p>First character must be a letter</p></li>
<li><p>Can't end with a hyphen or contain two consecutive
hyphens</p></li>
</ul>
<p>Example: <code>my-cluster-param-group1</code></p></td>
</tr>
<tr class="odd">
<td><code
id="rds_copy_db_cluster_parameter_group_:_TargetDBClusterParameterGroupDescription">TargetDBClusterParameterGroupDescription</code></td>
<td><p>[required] A description for the copied DB cluster parameter
group.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_copy_db_cluster_parameter_group_:_Tags">Tags</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DBClusterParameterGroup = list(
        DBClusterParameterGroupName = "string",
        DBParameterGroupFamily = "string",
        Description = "string",
        DBClusterParameterGroupArn = "string"
      )
    )

### Request syntax

    svc$copy_db_cluster_parameter_group(
      SourceDBClusterParameterGroupIdentifier = "string",
      TargetDBClusterParameterGroupIdentifier = "string",
      TargetDBClusterParameterGroupDescription = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
