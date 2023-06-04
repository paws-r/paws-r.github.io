<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>memorydb_reset_parameter_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the parameters of a parameter group to the engine or system default value

### Description

Modifies the parameters of a parameter group to the engine or system
default value. You can reset specific parameters by submitting a list of
parameter names. To reset the entire parameter group, specify the
AllParameters and ParameterGroupName parameters.

### Usage

    memorydb_reset_parameter_group(ParameterGroupName, AllParameters,
      ParameterNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="memorydb_reset_parameter_group_:_ParameterGroupName">ParameterGroupName</code></td>
<td><p>[required] The name of the parameter group to reset.</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_reset_parameter_group_:_AllParameters">AllParameters</code></td>
<td><p>If true, all parameters in the parameter group are reset to their
default values. If false, only the parameters listed by ParameterNames
are reset to their default values.</p></td>
</tr>
<tr class="odd">
<td><code
id="memorydb_reset_parameter_group_:_ParameterNames">ParameterNames</code></td>
<td><p>An array of parameter names to reset to their default values. If
AllParameters is true, do not use ParameterNames. If AllParameters is
false, you must specify the name of at least one parameter to
reset.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ParameterGroup = list(
        Name = "string",
        Family = "string",
        Description = "string",
        ARN = "string"
      )
    )

### Request syntax

    svc$reset_parameter_group(
      ParameterGroupName = "string",
      AllParameters = TRUE|FALSE,
      ParameterNames = list(
        "string"
      )
    )
