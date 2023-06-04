<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>memorydb_update_parameter_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the parameters of a parameter group

### Description

Updates the parameters of a parameter group. You can modify up to 20
parameters in a single request by submitting a list parameter name and
value pairs.

### Usage

    memorydb_update_parameter_group(ParameterGroupName, ParameterNameValues)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="memorydb_update_parameter_group_:_ParameterGroupName">ParameterGroupName</code></td>
<td><p>[required] The name of the parameter group to update.</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_update_parameter_group_:_ParameterNameValues">ParameterNameValues</code></td>
<td><p>[required] An array of parameter names and values for the
parameter update. You must supply at least one parameter name and value;
subsequent arguments are optional. A maximum of 20 parameters may be
updated per request.</p></td>
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

    svc$update_parameter_group(
      ParameterGroupName = "string",
      ParameterNameValues = list(
        list(
          ParameterName = "string",
          ParameterValue = "string"
        )
      )
    )
