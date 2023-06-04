<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sfn_describe_execution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides all information about a state machine execution, such as the state machine associated with the execution, the execution input and output, and relevant execution metadata

### Description

Provides all information about a state machine execution, such as the
state machine associated with the execution, the execution input and
output, and relevant execution metadata. Use this API action to return
the Map Run ARN if the execution was dispatched by a Map Run.

This operation is eventually consistent. The results are best effort and
may not reflect very recent updates and changes.

This API action is not supported by `EXPRESS` state machine executions
unless they were dispatched by a Map Run.

### Usage

    sfn_describe_execution(executionArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sfn_describe_execution_:_executionArn">executionArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the execution to
describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      executionArn = "string",
      stateMachineArn = "string",
      name = "string",
      status = "RUNNING"|"SUCCEEDED"|"FAILED"|"TIMED_OUT"|"ABORTED",
      startDate = as.POSIXct(
        "2015-01-01"
      ),
      stopDate = as.POSIXct(
        "2015-01-01"
      ),
      input = "string",
      inputDetails = list(
        included = TRUE|FALSE
      ),
      output = "string",
      outputDetails = list(
        included = TRUE|FALSE
      ),
      traceHeader = "string",
      mapRunArn = "string",
      error = "string",
      cause = "string"
    )

### Request syntax

    svc$describe_execution(
      executionArn = "string"
    )
