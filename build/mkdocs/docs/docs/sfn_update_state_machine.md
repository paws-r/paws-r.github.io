<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sfn_update_state_machine</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an existing state machine by modifying its definition, roleArn, or loggingConfiguration

### Description

Updates an existing state machine by modifying its `definition`,
`roleArn`, or `loggingConfiguration`. Running executions will continue
to use the previous `definition` and `roleArn`. You must include at
least one of `definition` or `roleArn` or you will receive a
`MissingRequiredParameter` error.

If the given state machine Amazon Resource Name (ARN) is a qualified
state machine ARN, it will fail with ValidationException.

A qualified state machine ARN refers to a *Distributed Map state*
defined within a state machine. For example, the qualified state machine
ARN
`arn:partition:states:region:account-id:stateMachine:stateMachineName/mapStateLabel`
refers to a *Distributed Map state* with a label `mapStateLabel` in the
state machine named `stateMachineName`.

All `start_execution` calls within a few seconds will use the updated
`definition` and `roleArn`. Executions started immediately after calling
`update_state_machine` may use the previous state machine `definition`
and `roleArn`.

### Usage

    sfn_update_state_machine(stateMachineArn, definition, roleArn,
      loggingConfiguration, tracingConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sfn_update_state_machine_:_stateMachineArn">stateMachineArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the state
machine.</p></td>
</tr>
<tr class="even">
<td><code
id="sfn_update_state_machine_:_definition">definition</code></td>
<td><p>The Amazon States Language definition of the state machine. See
<a
href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html">Amazon
States Language</a>.</p></td>
</tr>
<tr class="odd">
<td><code id="sfn_update_state_machine_:_roleArn">roleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the IAM role of the state
machine.</p></td>
</tr>
<tr class="even">
<td><code
id="sfn_update_state_machine_:_loggingConfiguration">loggingConfiguration</code></td>
<td><p>The <code>LoggingConfiguration</code> data type is used to set
CloudWatch Logs options.</p></td>
</tr>
<tr class="odd">
<td><code
id="sfn_update_state_machine_:_tracingConfiguration">tracingConfiguration</code></td>
<td><p>Selects whether X-Ray tracing is enabled.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      updateDate = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$update_state_machine(
      stateMachineArn = "string",
      definition = "string",
      roleArn = "string",
      loggingConfiguration = list(
        level = "ALL"|"ERROR"|"FATAL"|"OFF",
        includeExecutionData = TRUE|FALSE,
        destinations = list(
          list(
            cloudWatchLogsLogGroup = list(
              logGroupArn = "string"
            )
          )
        )
      ),
      tracingConfiguration = list(
        enabled = TRUE|FALSE
      )
    )
