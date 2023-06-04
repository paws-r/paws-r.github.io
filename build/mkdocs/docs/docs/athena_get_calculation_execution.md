<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_get_calculation_execution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a previously submitted calculation execution

### Description

Describes a previously submitted calculation execution.

### Usage

    athena_get_calculation_execution(CalculationExecutionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="athena_get_calculation_execution_:_CalculationExecutionId">CalculationExecutionId</code></td>
<td><p>[required] The calculation execution UUID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CalculationExecutionId = "string",
      SessionId = "string",
      Description = "string",
      WorkingDirectory = "string",
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
      ),
      Result = list(
        StdOutS3Uri = "string",
        StdErrorS3Uri = "string",
        ResultS3Uri = "string",
        ResultType = "string"
      )
    )

### Request syntax

    svc$get_calculation_execution(
      CalculationExecutionId = "string"
    )
