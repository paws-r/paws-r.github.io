<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sfn_describe_state_machine</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides information about a state machine's definition, its IAM role Amazon Resource Name (ARN), and configuration

### Description

Provides information about a state machine's definition, its IAM role
Amazon Resource Name (ARN), and configuration. If the state machine ARN
is a qualified state machine ARN, the response returned includes the
`Map` state's label.

A qualified state machine ARN refers to a *Distributed Map state*
defined within a state machine. For example, the qualified state machine
ARN
`arn:partition:states:region:account-id:stateMachine:stateMachineName/mapStateLabel`
refers to a *Distributed Map state* with a label `mapStateLabel` in the
state machine named `stateMachineName`.

This operation is eventually consistent. The results are best effort and
may not reflect very recent updates and changes.

### Usage

    sfn_describe_state_machine(stateMachineArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sfn_describe_state_machine_:_stateMachineArn">stateMachineArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the state machine to
describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      stateMachineArn = "string",
      name = "string",
      status = "ACTIVE"|"DELETING",
      definition = "string",
      roleArn = "string",
      type = "STANDARD"|"EXPRESS",
      creationDate = as.POSIXct(
        "2015-01-01"
      ),
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
      ),
      label = "string"
    )

### Request syntax

    svc$describe_state_machine(
      stateMachineArn = "string"
    )
