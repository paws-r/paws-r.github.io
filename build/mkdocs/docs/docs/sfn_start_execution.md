<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sfn_start_execution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a state machine execution

### Description

Starts a state machine execution. If the given state machine Amazon
Resource Name (ARN) is a qualified state machine ARN, it will fail with
ValidationException.

A qualified state machine ARN refers to a *Distributed Map state*
defined within a state machine. For example, the qualified state machine
ARN
`arn:partition:states:region:account-id:stateMachine:stateMachineName/mapStateLabel`
refers to a *Distributed Map state* with a label `mapStateLabel` in the
state machine named `stateMachineName`.

`start_execution` is idempotent for `STANDARD` workflows. For a
`STANDARD` workflow, if `start_execution` is called with the same name
and input as a running execution, the call will succeed and return the
same response as the original request. If the execution is closed or if
the input is different, it will return a `⁠400 ExecutionAlreadyExists⁠`
error. Names can be reused after 90 days.

`start_execution` is not idempotent for `EXPRESS` workflows.

### Usage

    sfn_start_execution(stateMachineArn, name, input, traceHeader)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sfn_start_execution_:_stateMachineArn">stateMachineArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the state machine to
execute.</p></td>
</tr>
<tr class="even">
<td><code id="sfn_start_execution_:_name">name</code></td>
<td><p>The name of the execution. This name must be unique for your
Amazon Web Services account, region, and state machine for 90 days. For
more information, see <a
href="https://docs.aws.amazon.com/step-functions/latest/dg/limits-overview.html#service-limits-state-machine-executions">Limits
Related to State Machine Executions</a> in the <em>Step Functions
Developer Guide</em>.</p>
<p>A name must <em>not</em> contain:</p>
<ul>
<li><p>white space</p></li>
<li><p>brackets <code
style="white-space: pre;">⁠&lt; &gt; { } [ ]⁠</code></p></li>
<li><p>wildcard characters <code
style="white-space: pre;">⁠? *⁠</code></p></li>
<li><p>special characters <code
style="white-space: pre;">⁠\" # % \ ^ | ~ \` $ &amp; , ; : /⁠</code></p></li>
<li><p>control characters (<code
style="white-space: pre;">⁠U+0000-001F⁠</code>, <code
style="white-space: pre;">⁠U+007F-009F⁠</code>)</p></li>
</ul>
<p>To enable logging with CloudWatch Logs, the name should only contain
0-9, A-Z, a-z, - and _.</p>
<p>[ ]: R:%20</p></td>
</tr>
<tr class="odd">
<td><code id="sfn_start_execution_:_input">input</code></td>
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
<td><code id="sfn_start_execution_:_traceHeader">traceHeader</code></td>
<td><p>Passes the X-Ray trace header. The trace header can also be
passed in the request payload.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      executionArn = "string",
      startDate = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$start_execution(
      stateMachineArn = "string",
      name = "string",
      input = "string",
      traceHeader = "string"
    )
