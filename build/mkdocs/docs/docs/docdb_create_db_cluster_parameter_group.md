<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>docdb_create_db_cluster_parameter_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new cluster parameter group

### Description

Creates a new cluster parameter group.

Parameters in a cluster parameter group apply to all of the instances in
a cluster.

A cluster parameter group is initially created with the default
parameters for the database engine used by instances in the cluster. In
Amazon DocumentDB, you cannot make modifications directly to the
`default.docdb3.6` cluster parameter group. If your Amazon DocumentDB
cluster is using the default cluster parameter group and you want to
modify a value in it, you must first [create a new parameter
group](https://docs.aws.amazon.com/documentdb/latest/developerguide/) or
[copy an existing parameter
group](https://docs.aws.amazon.com/documentdb/latest/developerguide/),
modify it, and then apply the modified parameter group to your cluster.
For the new cluster parameter group and associated settings to take
effect, you must then reboot the instances in the cluster without
failover. For more information, see [Modifying Amazon DocumentDB Cluster
Parameter
Groups](https://docs.aws.amazon.com/documentdb/latest/developerguide/).

### Usage

    docdb_create_db_cluster_parameter_group(DBClusterParameterGroupName,
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
id="docdb_create_db_cluster_parameter_group_:_DBClusterParameterGroupName">DBClusterParameterGroupName</code></td>
<td><p>[required] The name of the cluster parameter group.</p>
<p>Constraints:</p>
<ul>
<li><p>Must not match the name of an existing
<code>DBClusterParameterGroup</code>.</p></li>
</ul>
<p>This value is stored as a lowercase string.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_create_db_cluster_parameter_group_:_DBParameterGroupFamily">DBParameterGroupFamily</code></td>
<td><p>[required] The cluster parameter group family name.</p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_create_db_cluster_parameter_group_:_Description">Description</code></td>
<td><p>[required] The description for the cluster parameter
group.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_create_db_cluster_parameter_group_:_Tags">Tags</code></td>
<td><p>The tags to be assigned to the cluster parameter group.</p></td>
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
