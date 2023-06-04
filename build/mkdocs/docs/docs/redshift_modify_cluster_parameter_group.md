<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_modify_cluster_parameter_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the parameters of a parameter group

### Description

Modifies the parameters of a parameter group. For the parameters
parameter, it can't contain ASCII characters.

For more information about parameters and parameter groups, go to
[Amazon Redshift Parameter
Groups](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html)
in the *Amazon Redshift Cluster Management Guide*.

### Usage

    redshift_modify_cluster_parameter_group(ParameterGroupName, Parameters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_modify_cluster_parameter_group_:_ParameterGroupName">ParameterGroupName</code></td>
<td><p>[required] The name of the parameter group to be
modified.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_modify_cluster_parameter_group_:_Parameters">Parameters</code></td>
<td><p>[required] An array of parameters to be modified. A maximum of 20
parameters can be modified in a single request.</p>
<p>For each parameter to be modified, you must supply at least the
parameter name and parameter value; other name-value pairs of the
parameter are optional.</p>
<p>For the workload management (WLM) configuration, you must supply all
the name-value pairs in the wlm_json_configuration parameter.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ParameterGroupName = "string",
      ParameterGroupStatus = "string"
    )

### Request syntax

    svc$modify_cluster_parameter_group(
      ParameterGroupName = "string",
      Parameters = list(
        list(
          ParameterName = "string",
          ParameterValue = "string",
          Description = "string",
          Source = "string",
          DataType = "string",
          AllowedValues = "string",
          ApplyType = "static"|"dynamic",
          IsModifiable = TRUE|FALSE,
          MinimumEngineVersion = "string"
        )
      )
    )
