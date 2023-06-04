<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_create_cluster_parameter_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Amazon Redshift parameter group

### Description

Creates an Amazon Redshift parameter group.

Creating parameter groups is independent of creating clusters. You can
associate a cluster with a parameter group when you create the cluster.
You can also associate an existing cluster with a parameter group after
the cluster is created by using `modify_cluster`.

Parameters in the parameter group define specific behavior that applies
to the databases you create on the cluster. For more information about
parameters and parameter groups, go to [Amazon Redshift Parameter
Groups](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html)
in the *Amazon Redshift Cluster Management Guide*.

### Usage

    redshift_create_cluster_parameter_group(ParameterGroupName,
      ParameterGroupFamily, Description, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_create_cluster_parameter_group_:_ParameterGroupName">ParameterGroupName</code></td>
<td><p>[required] The name of the cluster parameter group.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be 1 to 255 alphanumeric characters or hyphens</p></li>
<li><p>First character must be a letter.</p></li>
<li><p>Cannot end with a hyphen or contain two consecutive
hyphens.</p></li>
<li><p>Must be unique withing your Amazon Web Services account.</p></li>
</ul>
<p>This value is stored as a lower-case string.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_create_cluster_parameter_group_:_ParameterGroupFamily">ParameterGroupFamily</code></td>
<td><p>[required] The Amazon Redshift engine version to which the
cluster parameter group applies. The cluster engine version determines
the set of parameters.</p>
<p>To get a list of valid parameter group family names, you can call
<code>describe_cluster_parameter_groups</code>. By default, Amazon
Redshift returns a list of all the parameter groups that are owned by
your Amazon Web Services account, including the default parameter groups
for each Amazon Redshift engine version. The parameter group family
names associated with the default parameter groups provide you the valid
values. For example, a valid family name is "redshift-1.0".</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_create_cluster_parameter_group_:_Description">Description</code></td>
<td><p>[required] A description of the parameter group.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_create_cluster_parameter_group_:_Tags">Tags</code></td>
<td><p>A list of tag instances.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ClusterParameterGroup = list(
        ParameterGroupName = "string",
        ParameterGroupFamily = "string",
        Description = "string",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$create_cluster_parameter_group(
      ParameterGroupName = "string",
      ParameterGroupFamily = "string",
      Description = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
