<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_batch_create_variable</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a batch of variables

### Description

Creates a batch of variables.

### Usage

    frauddetector_batch_create_variable(variableEntries, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="frauddetector_batch_create_variable_:_variableEntries">variableEntries</code></td>
<td><p>[required] The list of variables for the batch create variable
request.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_batch_create_variable_:_tags">tags</code></td>
<td><p>A collection of key and value pairs.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      errors = list(
        list(
          name = "string",
          code = 123,
          message = "string"
        )
      )
    )

### Request syntax

    svc$batch_create_variable(
      variableEntries = list(
        list(
          name = "string",
          dataType = "string",
          dataSource = "string",
          defaultValue = "string",
          description = "string",
          variableType = "string"
        )
      ),
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
