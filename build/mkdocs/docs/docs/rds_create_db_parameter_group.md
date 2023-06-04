<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_create_db_parameter_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new DB parameter group

### Description

Creates a new DB parameter group.

A DB parameter group is initially created with the default parameters
for the database engine used by the DB instance. To provide custom
values for any of the parameters, you must modify the group after
creating it using `modify_db_parameter_group`. Once you've created a DB
parameter group, you need to associate it with your DB instance using
`modify_db_instance`. When you associate a new DB parameter group with a
running DB instance, you need to reboot the DB instance without failover
for the new DB parameter group and associated settings to take effect.

This command doesn't apply to RDS Custom.

After you create a DB parameter group, you should wait at least 5
minutes before creating your first DB instance that uses that DB
parameter group as the default parameter group. This allows Amazon RDS
to fully complete the create action before the parameter group is used
as the default for a new DB instance. This is especially important for
parameters that are critical when creating the default database for a DB
instance, such as the character set for the default database defined by
the `character_set_database` parameter. You can use the *Parameter
Groups* option of the Amazon RDS console or the *DescribeDBParameters*
command to verify that your DB parameter group has been created or
modified.

### Usage

    rds_create_db_parameter_group(DBParameterGroupName,
      DBParameterGroupFamily, Description, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_create_db_parameter_group_:_DBParameterGroupName">DBParameterGroupName</code></td>
<td><p>[required] The name of the DB parameter group.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be 1 to 255 letters, numbers, or hyphens.</p></li>
<li><p>First character must be a letter</p></li>
<li><p>Can't end with a hyphen or contain two consecutive
hyphens</p></li>
</ul>
<p>This value is stored as a lowercase string.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_parameter_group_:_DBParameterGroupFamily">DBParameterGroupFamily</code></td>
<td><p>[required] The DB parameter group family name. A DB parameter
group can be associated with one and only one DB parameter group family,
and can be applied only to a DB instance running a database engine and
engine version compatible with that DB parameter group family.</p>
<p>To list all of the available parameter group families for a DB
engine, use the following command:</p>
<p><code
style="white-space: pre;">⁠aws rds describe-db-engine-versions --query "DBEngineVersions[].DBParameterGroupFamily" --engine &lt;engine&gt;⁠</code></p>
<p>For example, to list all of the available parameter group families
for the MySQL DB engine, use the following command:</p>
<p><code
style="white-space: pre;">⁠aws rds describe-db-engine-versions --query "DBEngineVersions[].DBParameterGroupFamily" --engine mysql⁠</code></p>
<p>The output contains duplicates.</p>
<p>The following are the valid DB engine values:</p>
<ul>
<li><p><code>aurora-mysql</code></p></li>
<li><p><code>aurora-postgresql</code></p></li>
<li><p><code>mariadb</code></p></li>
<li><p><code>mysql</code></p></li>
<li><p><code>oracle-ee</code></p></li>
<li><p><code>oracle-ee-cdb</code></p></li>
<li><p><code>oracle-se2</code></p></li>
<li><p><code>oracle-se2-cdb</code></p></li>
<li><p><code>postgres</code></p></li>
<li><p><code>sqlserver-ee</code></p></li>
<li><p><code>sqlserver-se</code></p></li>
<li><p><code>sqlserver-ex</code></p></li>
<li><p><code>sqlserver-web</code></p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_parameter_group_:_Description">Description</code></td>
<td><p>[required] The description for the DB parameter group.</p></td>
</tr>
<tr class="even">
<td><code id="rds_create_db_parameter_group_:_Tags">Tags</code></td>
<td><p>Tags to assign to the DB parameter group.</p></td>
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

    svc$create_db_parameter_group(
      DBParameterGroupName = "string",
      DBParameterGroupFamily = "string",
      Description = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
