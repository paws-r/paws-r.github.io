<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sfn_start_sync_execution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a Synchronous Express state machine execution

### Description

Starts a Synchronous Express state machine execution.
`start_sync_execution` is not available for `STANDARD` workflows.

`start_sync_execution` will return a `⁠200 OK⁠` response, even if your
execution fails, because the status code in the API response doesn't
reflect function errors. Error codes are reserved for errors that
prevent your execution from running, such as permissions errors, limit
errors, or issues with your state machine code and configuration.

This API action isn't logged in CloudTrail.

### Usage

    sfn_start_sync_execution(stateMachineArn, name, input, traceHeader)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sfn_start_sync_execution_:_stateMachineArn">stateMachineArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the state machine to
execute.</p></td>
</tr>
<tr class="even">
<td><code id="sfn_start_sync_execution_:_name">name</code></td>
<td><p>The name of the execution.</p></td>
</tr>
<tr class="odd">
<td><code id="sfn_start_sync_execution_:_input">input</code></td>
<td><p>The string that contains the JSON input data for the execution,
for example:</p>
<p><code
style="white-space: pre;">⁠"input": "{\"first_name\" : \"test\"}"⁠</code></p>
<p>If you don't include any JSON input data, you still must include the
two braces, for example: <code>"input": "{}"</code></p>
<p>Length constraints apply to the payload size, and are expressed as
bytes in UTF-8 encoding.</p></td>
</tr>
<tr class="even">
<td><code
id="sfn_start_sync_execution_:_traceHeader">traceHeader</code></td>
<td><p>Passes the X-Ray trace header. The trace header can also be
passed in the request payload.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      executionArn = "string",
      stateMachineArn = "string",
      name = "string",
      startDate = as.POSIXct(
        "2015-01-01"
      ),
      stopDate = as.POSIXct(
        "2015-01-01"
      ),
      status = "SUCCEEDED"|"FAILED"|"TIMED_OUT",
      error = "string",
      cause = "string",
      input = "string",
      inputDetails = list(
        included = TRUE|FALSE
      ),
      output = "string",
      outputDetails = list(
        included = TRUE|FALSE
      ),
      traceHeader = "string",
      billingDetails = list(
        billedMemoryUsedInMB = 123,
        billedDurationInMilliseconds = 123
      )
    )

### Request syntax

    svc$start_sync_execution(
      stateMachineArn = "string",
      name = "string",
      input = "string",
      traceHeader = "string"
    )
