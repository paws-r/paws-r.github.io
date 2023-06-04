<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_stop_calculation_execution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Requests the cancellation of a calculation

### Description

Requests the cancellation of a calculation. A
`stop_calculation_execution` call on a calculation that is already in a
terminal state (for example, `STOPPED`, `FAILED`, or `COMPLETED`)
succeeds but has no effect.

Cancelling a calculation is done on a best effort basis. If a
calculation cannot be cancelled, you can be charged for its completion.
If you are concerned about being charged for a calculation that cannot
be cancelled, consider terminating the session in which the calculation
is running.

### Usage

    athena_stop_calculation_execution(CalculationExecutionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="athena_stop_calculation_execution_:_CalculationExecutionId">CalculationExecutionId</code></td>
<td><p>[required] The calculation execution UUID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      State = "CREATING"|"CREATED"|"QUEUED"|"RUNNING"|"CANCELING"|"CANCELED"|"COMPLETED"|"FAILED"
    )

### Request syntax

    svc$stop_calculation_execution(
      CalculationExecutionId = "string"
    )
