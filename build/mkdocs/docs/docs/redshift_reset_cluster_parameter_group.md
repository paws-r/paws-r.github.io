<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_reset_cluster_parameter_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets one or more parameters of the specified parameter group to their default values and sets the source values of the parameters to "engine-default"

### Description

Sets one or more parameters of the specified parameter group to their
default values and sets the source values of the parameters to
"engine-default". To reset the entire parameter group specify the
*ResetAllParameters* parameter. For parameter changes to take effect you
must reboot any associated clusters.

### Usage

    redshift_reset_cluster_parameter_group(ParameterGroupName,
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
id="redshift_reset_cluster_parameter_group_:_ParameterGroupName">ParameterGroupName</code></td>
<td><p>[required] The name of the cluster parameter group to be
reset.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_reset_cluster_parameter_group_:_ResetAllParameters">ResetAllParameters</code></td>
<td><p>If <code>true</code>, all parameters in the specified parameter
group will be reset to their default values.</p>
<p>Default: <code>true</code></p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_reset_cluster_parameter_group_:_Parameters">Parameters</code></td>
<td><p>An array of names of parameters to be reset. If
<em>ResetAllParameters</em> option is not used, then at least one
parameter name must be supplied.</p>
<p>Constraints: A maximum of 20 parameters can be reset in a single
request.</p></td>
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

    svc$reset_cluster_parameter_group(
      ParameterGroupName = "string",
      ResetAllParameters = TRUE|FALSE,
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
