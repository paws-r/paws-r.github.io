<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_modify_db_cluster_parameter_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the parameters of a DB cluster parameter group

### Description

Modifies the parameters of a DB cluster parameter group. To modify more
than one parameter, submit a list of the following: `ParameterName`,
`ParameterValue`, and `ApplyMethod`. A maximum of 20 parameters can be
modified in a single request.

After you create a DB cluster parameter group, you should wait at least
5 minutes before creating your first DB cluster that uses that DB
cluster parameter group as the default parameter group. This allows
Amazon RDS to fully complete the create action before the parameter
group is used as the default for a new DB cluster. This is especially
important for parameters that are critical when creating the default
database for a DB cluster, such as the character set for the default
database defined by the `character_set_database` parameter. You can use
the *Parameter Groups* option of the Amazon RDS console or the
`describe_db_cluster_parameters` operation to verify that your DB
cluster parameter group has been created or modified.

If the modified DB cluster parameter group is used by an Aurora
Serverless v1 cluster, Aurora applies the update immediately. The
cluster restart might interrupt your workload. In that case, your
application must reopen any connections and retry any transactions that
were active when the parameter changes took effect.

For more information on Amazon Aurora DB clusters, see [What is Amazon
Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
in the *Amazon Aurora User Guide*.

For more information on Multi-AZ DB clusters, see [Multi-AZ DB cluster
deployments](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html)
in the *Amazon RDS User Guide.*

### Usage

    rds_modify_db_cluster_parameter_group(DBClusterParameterGroupName,
      Parameters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_modify_db_cluster_parameter_group_:_DBClusterParameterGroupName">DBClusterParameterGroupName</code></td>
<td><p>[required] The name of the DB cluster parameter group to
modify.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_modify_db_cluster_parameter_group_:_Parameters">Parameters</code></td>
<td><p>[required] A list of parameters in the DB cluster parameter group
to modify.</p>
<p>Valid Values (for the application method):
<code>immediate | pending-reboot</code></p>
<p>You can use the <code>immediate</code> value with dynamic parameters
only. You can use the <code>pending-reboot</code> value for both dynamic
and static parameters.</p>
<p>When the application method is <code>immediate</code>, changes to
dynamic parameters are applied immediately to the DB clusters associated
with the parameter group. When the application method is
<code>pending-reboot</code>, changes to dynamic and static parameters
are applied after a reboot without failover to the DB clusters
associated with the parameter group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DBClusterParameterGroupName = "string"
    )

### Request syntax

    svc$modify_db_cluster_parameter_group(
      DBClusterParameterGroupName = "string",
      Parameters = list(
        list(
          ParameterName = "string",
          ParameterValue = "string",
          Description = "string",
          Source = "string",
          ApplyType = "string",
          DataType = "string",
          AllowedValues = "string",
          IsModifiable = TRUE|FALSE,
          MinimumEngineVersion = "string",
          ApplyMethod = "immediate"|"pending-reboot",
          SupportedEngineModes = list(
            "string"
          )
        )
      )
    )
