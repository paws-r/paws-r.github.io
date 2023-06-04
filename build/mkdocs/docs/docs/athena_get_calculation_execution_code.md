<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_get_calculation_execution_code</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the unencrypted code that was executed for the calculation

### Description

Retrieves the unencrypted code that was executed for the calculation.

### Usage

    athena_get_calculation_execution_code(CalculationExecutionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="athena_get_calculation_execution_code_:_CalculationExecutionId">CalculationExecutionId</code></td>
<td><p>[required] The calculation execution UUID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CodeBlock = "string"
    )

### Request syntax

    svc$get_calculation_execution_code(
      CalculationExecutionId = "string"
    )
