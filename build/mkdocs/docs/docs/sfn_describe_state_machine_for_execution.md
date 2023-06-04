<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sfn_describe_state_machine_for_execution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides information about a state machine's definition, its execution role ARN, and configuration

### Description

Provides information about a state machine's definition, its execution
role ARN, and configuration. If an execution was dispatched by a Map
Run, the Map Run is returned in the response. Additionally, the state
machine returned will be the state machine associated with the Map Run.

This operation is eventually consistent. The results are best effort and
may not reflect very recent updates and changes.

This API action is not supported by `EXPRESS` state machines.

### Usage

    sfn_describe_state_machine_for_execution(executionArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sfn_describe_state_machine_for_execution_:_executionArn">executionArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the execution you
want state machine information for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      stateMachineArn = "string",
      name = "string",
      definition = "string",
      roleArn = "string",
      updateDate = as.POSIXct(
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
      mapRunArn = "string",
      label = "string"
    )

### Request syntax

    svc$describe_state_machine_for_execution(
      executionArn = "string"
    )
