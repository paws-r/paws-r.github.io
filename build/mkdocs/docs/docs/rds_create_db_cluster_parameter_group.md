<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_create_db_cluster_parameter_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new DB cluster parameter group

### Description

Creates a new DB cluster parameter group.

Parameters in a DB cluster parameter group apply to all of the instances
in a DB cluster.

A DB cluster parameter group is initially created with the default
parameters for the database engine used by instances in the DB cluster.
To provide custom values for any of the parameters, you must modify the
group after creating it using `modify_db_cluster_parameter_group`. Once
you've created a DB cluster parameter group, you need to associate it
with your DB cluster using `modify_db_cluster`.

When you associate a new DB cluster parameter group with a running
Aurora DB cluster, reboot the DB instances in the DB cluster without
failover for the new DB cluster parameter group and associated settings
to take effect.

When you associate a new DB cluster parameter group with a running
Multi-AZ DB cluster, reboot the DB cluster without failover for the new
DB cluster parameter group and associated settings to take effect.

After you create a DB cluster parameter group, you should wait at least
5 minutes before creating your first DB cluster that uses that DB
cluster parameter group as the default parameter group. This allows
Amazon RDS to fully complete the create action before the DB cluster
parameter group is used as the default for a new DB cluster. This is
especially important for parameters that are critical when creating the
default database for a DB cluster, such as the character set for the
default database defined by the `character_set_database` parameter. You
can use the *Parameter Groups* option of the Amazon RDS console or the
`describe_db_cluster_parameters` operation to verify that your DB
cluster parameter group has been created or modified.

For more information on Amazon Aurora, see [What is Amazon
Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
in the *Amazon Aurora User Guide*.

For more information on Multi-AZ DB clusters, see [Multi-AZ DB cluster
deployments](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html)
in the *Amazon RDS User Guide*.

### Usage

    rds_create_db_cluster_parameter_group(DBClusterParameterGroupName,
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
id="rds_create_db_cluster_parameter_group_:_DBClusterParameterGroupName">DBClusterParameterGroupName</code></td>
<td><p>[required] The name of the DB cluster parameter group.</p>
<p>Constraints:</p>
<ul>
<li><p>Must not match the name of an existing DB cluster parameter
group.</p></li>
</ul>
<p>This value is stored as a lowercase string.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_cluster_parameter_group_:_DBParameterGroupFamily">DBParameterGroupFamily</code></td>
<td><p>[required] The DB cluster parameter group family name. A DB
cluster parameter group can be associated with one and only one DB
cluster parameter group family, and can be applied only to a DB cluster
running a database engine and engine version compatible with that DB
cluster parameter group family.</p>
<p><strong>Aurora MySQL</strong></p>
<p>Example: <code>aurora-mysql5.7</code>,
<code>aurora-mysql8.0</code></p>
<p><strong>Aurora PostgreSQL</strong></p>
<p>Example: <code>aurora-postgresql14</code></p>
<p><strong>RDS for MySQL</strong></p>
<p>Example: <code>mysql8.0</code></p>
<p><strong>RDS for PostgreSQL</strong></p>
<p>Example: <code>postgres12</code></p>
<p>To list all of the available parameter group families for a DB
engine, use the following command:</p>
<p><code
style="white-space: pre;">⁠aws rds describe-db-engine-versions --query "DBEngineVersions[].DBParameterGroupFamily" --engine &lt;engine&gt;⁠</code></p>
<p>For example, to list all of the available parameter group families
for the Aurora PostgreSQL DB engine, use the following command:</p>
<p><code
style="white-space: pre;">⁠aws rds describe-db-engine-versions --query "DBEngineVersions[].DBParameterGroupFamily" --engine aurora-postgresql⁠</code></p>
<p>The output contains duplicates.</p>
<p>The following are the valid DB engine values:</p>
<ul>
<li><p><code>aurora-mysql</code></p></li>
<li><p><code>aurora-postgresql</code></p></li>
<li><p><code>mysql</code></p></li>
<li><p><code>postgres</code></p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_cluster_parameter_group_:_Description">Description</code></td>
<td><p>[required] The description for the DB cluster parameter
group.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_cluster_parameter_group_:_Tags">Tags</code></td>
<td><p>Tags to assign to the DB cluster parameter group.</p></td>
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

    svc$create_db_cluster_parameter_group(
      DBClusterParameterGroupName = "string",
      DBParameterGroupFamily = "string",
      Description = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
