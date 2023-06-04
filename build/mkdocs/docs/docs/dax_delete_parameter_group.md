<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dax_delete_parameter_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified parameter group

### Description

Deletes the specified parameter group. You cannot delete a parameter
group if it is associated with any DAX clusters.

### Usage

    dax_delete_parameter_group(ParameterGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dax_delete_parameter_group_:_ParameterGroupName">ParameterGroupName</code></td>
<td><p>[required] The name of the parameter group to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DeletionMessage = "string"
    )

### Request syntax

    svc$delete_parameter_group(
      ParameterGroupName = "string"
    )
