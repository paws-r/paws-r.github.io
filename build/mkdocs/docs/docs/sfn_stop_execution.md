<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sfn_stop_execution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops an execution

### Description

Stops an execution.

This API action is not supported by `EXPRESS` state machines.

### Usage

    sfn_stop_execution(executionArn, error, cause)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sfn_stop_execution_:_executionArn">executionArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the execution to
stop.</p></td>
</tr>
<tr class="even">
<td><code id="sfn_stop_execution_:_error">error</code></td>
<td><p>The error code of the failure.</p></td>
</tr>
<tr class="odd">
<td><code id="sfn_stop_execution_:_cause">cause</code></td>
<td><p>A more detailed explanation of the cause of the failure.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      stopDate = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$stop_execution(
      executionArn = "string",
      error = "string",
      cause = "string"
    )
