<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>docdb_modify_db_cluster_parameter_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the parameters of a cluster parameter group

### Description

Modifies the parameters of a cluster parameter group. To modify more
than one parameter, submit a list of the following: `ParameterName`,
`ParameterValue`, and `ApplyMethod`. A maximum of 20 parameters can be
modified in a single request.

Changes to dynamic parameters are applied immediately. Changes to static
parameters require a reboot or maintenance window before the change can
take effect.

After you create a cluster parameter group, you should wait at least 5
minutes before creating your first cluster that uses that cluster
parameter group as the default parameter group. This allows Amazon
DocumentDB to fully complete the create action before the parameter
group is used as the default for a new cluster. This step is especially
important for parameters that are critical when creating the default
database for a cluster, such as the character set for the default
database defined by the `character_set_database` parameter.

### Usage

    docdb_modify_db_cluster_parameter_group(DBClusterParameterGroupName,
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
id="docdb_modify_db_cluster_parameter_group_:_DBClusterParameterGroupName">DBClusterParameterGroupName</code></td>
<td><p>[required] The name of the cluster parameter group to
modify.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_modify_db_cluster_parameter_group_:_Parameters">Parameters</code></td>
<td><p>[required] A list of parameters in the cluster parameter group to
modify.</p></td>
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
          ApplyMethod = "immediate"|"pending-reboot"
        )
      )
    )
