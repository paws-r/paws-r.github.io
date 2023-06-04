<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dax_create_parameter_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new parameter group

### Description

Creates a new parameter group. A parameter group is a collection of
parameters that you apply to all of the nodes in a DAX cluster.

### Usage

    dax_create_parameter_group(ParameterGroupName, Description)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dax_create_parameter_group_:_ParameterGroupName">ParameterGroupName</code></td>
<td><p>[required] The name of the parameter group to apply to all of the
clusters in this replication group.</p></td>
</tr>
<tr class="even">
<td><code
id="dax_create_parameter_group_:_Description">Description</code></td>
<td><p>A description of the parameter group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ParameterGroup = list(
        ParameterGroupName = "string",
        Description = "string"
      )
    )

### Request syntax

    svc$create_parameter_group(
      ParameterGroupName = "string",
      Description = "string"
    )
