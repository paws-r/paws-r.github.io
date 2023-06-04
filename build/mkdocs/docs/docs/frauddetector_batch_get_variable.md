<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_batch_get_variable</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a batch of variables

### Description

Gets a batch of variables.

### Usage

    frauddetector_batch_get_variable(names)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="frauddetector_batch_get_variable_:_names">names</code></td>
<td><p>[required] The list of variable names to get.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      variables = list(
        list(
          name = "string",
          dataType = "STRING"|"INTEGER"|"FLOAT"|"BOOLEAN",
          dataSource = "EVENT"|"MODEL_SCORE"|"EXTERNAL_MODEL_SCORE",
          defaultValue = "string",
          description = "string",
          variableType = "string",
          lastUpdatedTime = "string",
          createdTime = "string",
          arn = "string"
        )
      ),
      errors = list(
        list(
          name = "string",
          code = 123,
          message = "string"
        )
      )
    )

### Request syntax

    svc$batch_get_variable(
      names = list(
        "string"
      )
    )
