<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_reset_db_parameter_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the parameters of a DB parameter group to the engine/system default value

### Description

Modifies the parameters of a DB parameter group to the engine/system
default value. To reset specific parameters, provide a list of the
following: `ParameterName` and `ApplyMethod`. To reset the entire DB
parameter group, specify the `DBParameterGroup` name and
`ResetAllParameters` parameters. When resetting the entire group,
dynamic parameters are updated immediately and static parameters are set
to `pending-reboot` to take effect on the next DB instance restart or
`reboot_db_instance` request.

### Usage

    rds_reset_db_parameter_group(DBParameterGroupName, ResetAllParameters,
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
id="rds_reset_db_parameter_group_:_DBParameterGroupName">DBParameterGroupName</code></td>
<td><p>[required] The name of the DB parameter group.</p>
<p>Constraints:</p>
<ul>
<li><p>Must match the name of an existing
<code>DBParameterGroup</code>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="rds_reset_db_parameter_group_:_ResetAllParameters">ResetAllParameters</code></td>
<td><p>A value that indicates whether to reset all parameters in the DB
parameter group to default values. By default, all parameters in the DB
parameter group are reset to default values.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_reset_db_parameter_group_:_Parameters">Parameters</code></td>
<td><p>To reset the entire DB parameter group, specify the
<code>DBParameterGroup</code> name and <code>ResetAllParameters</code>
parameters. To reset specific parameters, provide a list of the
following: <code>ParameterName</code> and <code>ApplyMethod</code>. A
maximum of 20 parameters can be modified in a single request.</p>
<p><strong>MySQL</strong></p>
<p>Valid Values (for Apply method): <code>immediate</code> |
<code>pending-reboot</code></p>
<p>You can use the immediate value with dynamic parameters only. You can
use the <code>pending-reboot</code> value for both dynamic and static
parameters, and changes are applied when DB instance reboots.</p>
<p><strong>MariaDB</strong></p>
<p>Valid Values (for Apply method): <code>immediate</code> |
<code>pending-reboot</code></p>
<p>You can use the immediate value with dynamic parameters only. You can
use the <code>pending-reboot</code> value for both dynamic and static
parameters, and changes are applied when DB instance reboots.</p>
<p><strong>Oracle</strong></p>
<p>Valid Values (for Apply method): <code>pending-reboot</code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DBParameterGroupName = "string"
    )

### Request syntax

    svc$reset_db_parameter_group(
      DBParameterGroupName = "string",
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
