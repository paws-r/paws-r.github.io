<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_get_calculation_execution_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the status of a current calculation

### Description

Gets the status of a current calculation.

### Usage

    athena_get_calculation_execution_status(CalculationExecutionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="athena_get_calculation_execution_status_:_CalculationExecutionId">CalculationExecutionId</code></td>
<td><p>[required] The calculation execution UUID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Status = list(
        SubmissionDateTime = as.POSIXct(
          "2015-01-01"
        ),
        CompletionDateTime = as.POSIXct(
          "2015-01-01"
        ),
        State = "CREATING"|"CREATED"|"QUEUED"|"RUNNING"|"CANCELING"|"CANCELED"|"COMPLETED"|"FAILED",
        StateChangeReason = "string"
      ),
      Statistics = list(
        DpuExecutionInMillis = 123,
        Progress = "string"
      )
    )

### Request syntax

    svc$get_calculation_execution_status(
      CalculationExecutionId = "string"
    )
