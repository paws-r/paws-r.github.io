<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>docdb_copy_db_cluster_parameter_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Copies the specified cluster parameter group

### Description

Copies the specified cluster parameter group.

### Usage

    docdb_copy_db_cluster_parameter_group(
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
id="docdb_copy_db_cluster_parameter_group_:_SourceDBClusterParameterGroupIdentifier">SourceDBClusterParameterGroupIdentifier</code></td>
<td><p>[required] The identifier or Amazon Resource Name (ARN) for the
source cluster parameter group.</p>
<p>Constraints:</p>
<ul>
<li><p>Must specify a valid cluster parameter group.</p></li>
<li><p>If the source cluster parameter group is in the same Amazon Web
Services Region as the copy, specify a valid parameter group identifier;
for example, <code>my-db-cluster-param-group</code>, or a valid
ARN.</p></li>
<li><p>If the source parameter group is in a different Amazon Web
Services Region than the copy, specify a valid cluster parameter group
ARN; for example,
<code>arn:aws:rds:us-east-1:123456789012:sample-cluster:sample-parameter-group</code>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="docdb_copy_db_cluster_parameter_group_:_TargetDBClusterParameterGroupIdentifier">TargetDBClusterParameterGroupIdentifier</code></td>
<td><p>[required] The identifier for the copied cluster parameter
group.</p>
<p>Constraints:</p>
<ul>
<li><p>Cannot be null, empty, or blank.</p></li>
<li><p>Must contain from 1 to 255 letters, numbers, or hyphens.</p></li>
<li><p>The first character must be a letter.</p></li>
<li><p>Cannot end with a hyphen or contain two consecutive
hyphens.</p></li>
</ul>
<p>Example: <code>my-cluster-param-group1</code></p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_copy_db_cluster_parameter_group_:_TargetDBClusterParameterGroupDescription">TargetDBClusterParameterGroupDescription</code></td>
<td><p>[required] A description for the copied cluster parameter
group.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_copy_db_cluster_parameter_group_:_Tags">Tags</code></td>
<td><p>The tags that are to be assigned to the parameter group.</p></td>
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
