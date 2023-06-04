<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>memorydb_create_parameter_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new MemoryDB parameter group

### Description

Creates a new MemoryDB parameter group. A parameter group is a
collection of parameters and their values that are applied to all of the
nodes in any cluster. For more information, see [Configuring engine
parameters using parameter
groups](https://docs.aws.amazon.com/memorydb/latest/devguide/parametergroups.html).

### Usage

    memorydb_create_parameter_group(ParameterGroupName, Family, Description,
      Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="memorydb_create_parameter_group_:_ParameterGroupName">ParameterGroupName</code></td>
<td><p>[required] The name of the parameter group.</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_create_parameter_group_:_Family">Family</code></td>
<td><p>[required] The name of the parameter group family that the
parameter group can be used with.</p></td>
</tr>
<tr class="odd">
<td><code
id="memorydb_create_parameter_group_:_Description">Description</code></td>
<td><p>An optional description of the parameter group.</p></td>
</tr>
<tr class="even">
<td><code id="memorydb_create_parameter_group_:_Tags">Tags</code></td>
<td><p>A list of tags to be added to this resource. A tag is a key-value
pair. A tag key must be accompanied by a tag value, although null is
accepted.</p></td>
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

    svc$create_parameter_group(
      ParameterGroupName = "string",
      Family = "string",
      Description = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
