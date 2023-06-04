<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_reset_db_cluster_parameter_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the parameters of a DB cluster parameter group to the default value

### Description

Modifies the parameters of a DB cluster parameter group to the default
value. To reset specific parameters submit a list of the following:
`ParameterName` and `ApplyMethod`. To reset the entire DB cluster
parameter group, specify the `DBClusterParameterGroupName` and
`ResetAllParameters` parameters.

When resetting the entire group, dynamic parameters are updated
immediately and static parameters are set to `pending-reboot` to take
effect on the next DB instance restart or `reboot_db_instance` request.
You must call `reboot_db_instance` for every DB instance in your DB
cluster that you want the updated static parameter to apply to.

For more information on Amazon Aurora DB clusters, see [What is Amazon
Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
in the *Amazon Aurora User Guide*.

For more information on Multi-AZ DB clusters, see [Multi-AZ DB cluster
deployments](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html)
in the *Amazon RDS User Guide.*

### Usage

    rds_reset_db_cluster_parameter_group(DBClusterParameterGroupName,
      ResetAllParameters, Parameters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_reset_db_cluster_parameter_group_:_DBClusterParameterGroupName">DBClusterParameterGroupName</code></td>
<td><p>[required] The name of the DB cluster parameter group to
reset.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_reset_db_cluster_parameter_group_:_ResetAllParameters">ResetAllParameters</code></td>
<td><p>A value that indicates whether to reset all parameters in the DB
cluster parameter group to their default values. You can't use this
parameter if there is a list of parameter names specified for the
<code>Parameters</code> parameter.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_reset_db_cluster_parameter_group_:_Parameters">Parameters</code></td>
<td><p>A list of parameter names in the DB cluster parameter group to
reset to the default values. You can't use this parameter if the
<code>ResetAllParameters</code> parameter is enabled.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DBClusterParameterGroupName = "string"
    )

### Request syntax

    svc$reset_db_cluster_parameter_group(
      DBClusterParameterGroupName = "string",
      ResetAllParameters = TRUE|FALSE,
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
