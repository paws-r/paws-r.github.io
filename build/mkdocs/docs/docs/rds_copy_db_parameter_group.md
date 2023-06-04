<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_copy_db_parameter_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Copies the specified DB parameter group

### Description

Copies the specified DB parameter group.

### Usage

    rds_copy_db_parameter_group(SourceDBParameterGroupIdentifier,
      TargetDBParameterGroupIdentifier, TargetDBParameterGroupDescription,
      Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_copy_db_parameter_group_:_SourceDBParameterGroupIdentifier">SourceDBParameterGroupIdentifier</code></td>
<td><p>[required] The identifier or ARN for the source DB parameter
group. For information about creating an ARN, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing">Constructing
an ARN for Amazon RDS</a> in the <em>Amazon RDS User Guide</em>.</p>
<p>Constraints:</p>
<ul>
<li><p>Must specify a valid DB parameter group.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="rds_copy_db_parameter_group_:_TargetDBParameterGroupIdentifier">TargetDBParameterGroupIdentifier</code></td>
<td><p>[required] The identifier for the copied DB parameter group.</p>
<p>Constraints:</p>
<ul>
<li><p>Can't be null, empty, or blank</p></li>
<li><p>Must contain from 1 to 255 letters, numbers, or hyphens</p></li>
<li><p>First character must be a letter</p></li>
<li><p>Can't end with a hyphen or contain two consecutive
hyphens</p></li>
</ul>
<p>Example: <code>my-db-parameter-group</code></p></td>
</tr>
<tr class="odd">
<td><code
id="rds_copy_db_parameter_group_:_TargetDBParameterGroupDescription">TargetDBParameterGroupDescription</code></td>
<td><p>[required] A description for the copied DB parameter
group.</p></td>
</tr>
<tr class="even">
<td><code id="rds_copy_db_parameter_group_:_Tags">Tags</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DBParameterGroup = list(
        DBParameterGroupName = "string",
        DBParameterGroupFamily = "string",
        Description = "string",
        DBParameterGroupArn = "string"
      )
    )

### Request syntax

    svc$copy_db_parameter_group(
      SourceDBParameterGroupIdentifier = "string",
      TargetDBParameterGroupIdentifier = "string",
      TargetDBParameterGroupDescription = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
