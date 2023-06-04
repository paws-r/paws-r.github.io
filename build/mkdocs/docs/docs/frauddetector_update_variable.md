<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_update_variable</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a variable

### Description

Updates a variable.

### Usage

    frauddetector_update_variable(name, defaultValue, description,
      variableType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="frauddetector_update_variable_:_name">name</code></td>
<td><p>[required] The name of the variable.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_update_variable_:_defaultValue">defaultValue</code></td>
<td><p>The new default value of the variable.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_update_variable_:_description">description</code></td>
<td><p>The new description.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_update_variable_:_variableType">variableType</code></td>
<td><p>The variable type. For more information see <a
href="https://docs.aws.amazon.com/frauddetector/latest/ug/create-a-variable.html#variable-types">Variable
types</a>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_variable(
      name = "string",
      defaultValue = "string",
      description = "string",
      variableType = "string"
    )
