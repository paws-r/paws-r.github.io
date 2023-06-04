<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>neptune_create_db_cluster_parameter_group</td>
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
with your DB cluster using `modify_db_cluster`. When you associate a new
DB cluster parameter group with a running DB cluster, you need to reboot
the DB instances in the DB cluster without failover for the new DB
cluster parameter group and associated settings to take effect.

After you create a DB cluster parameter group, you should wait at least
5 minutes before creating your first DB cluster that uses that DB
cluster parameter group as the default parameter group. This allows
Amazon Neptune to fully complete the create action before the DB cluster
parameter group is used as the default for a new DB cluster. This is
especially important for parameters that are critical when creating the
default database for a DB cluster, such as the character set for the
default database defined by the `character_set_database` parameter. You
can use the *Parameter Groups* option of the Amazon Neptune console or
the `describe_db_cluster_parameters` command to verify that your DB
cluster parameter group has been created or modified.

### Usage

    neptune_create_db_cluster_parameter_group(DBClusterParameterGroupName,
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
id="neptune_create_db_cluster_parameter_group_:_DBClusterParameterGroupName">DBClusterParameterGroupName</code></td>
<td><p>[required] The name of the DB cluster parameter group.</p>
<p>Constraints:</p>
<ul>
<li><p>Must match the name of an existing
DBClusterParameterGroup.</p></li>
</ul>
<p>This value is stored as a lowercase string.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_create_db_cluster_parameter_group_:_DBParameterGroupFamily">DBParameterGroupFamily</code></td>
<td><p>[required] The DB cluster parameter group family name. A DB
cluster parameter group can be associated with one and only one DB
cluster parameter group family, and can be applied only to a DB cluster
running a database engine and engine version compatible with that DB
cluster parameter group family.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_create_db_cluster_parameter_group_:_Description">Description</code></td>
<td><p>[required] The description for the DB cluster parameter
group.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_create_db_cluster_parameter_group_:_Tags">Tags</code></td>
<td><p>The tags to be assigned to the new DB cluster parameter
group.</p></td>
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
