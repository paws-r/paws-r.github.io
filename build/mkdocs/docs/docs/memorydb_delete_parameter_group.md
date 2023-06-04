<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>memorydb_delete_parameter_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified parameter group

### Description

Deletes the specified parameter group. You cannot delete a parameter
group if it is associated with any clusters. You cannot delete the
default parameter groups in your account.

### Usage

    memorydb_delete_parameter_group(ParameterGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="memorydb_delete_parameter_group_:_ParameterGroupName">ParameterGroupName</code></td>
<td><p>[required] The name of the parameter group to delete.</p></td>
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

    svc$delete_parameter_group(
      ParameterGroupName = "string"
    )
