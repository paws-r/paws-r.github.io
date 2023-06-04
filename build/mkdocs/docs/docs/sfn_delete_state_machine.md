<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sfn_delete_state_machine</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a state machine

### Description

Deletes a state machine. This is an asynchronous operation: It sets the
state machine's status to `DELETING` and begins the deletion process.

If the given state machine Amazon Resource Name (ARN) is a qualified
state machine ARN, it will fail with ValidationException.

A qualified state machine ARN refers to a *Distributed Map state*
defined within a state machine. For example, the qualified state machine
ARN
`arn:partition:states:region:account-id:stateMachine:stateMachineName/mapStateLabel`
refers to a *Distributed Map state* with a label `mapStateLabel` in the
state machine named `stateMachineName`.

For `EXPRESS` state machines, the deletion will happen eventually
(usually less than a minute). Running executions may emit logs after
`delete_state_machine` API is called.

### Usage

    sfn_delete_state_machine(stateMachineArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sfn_delete_state_machine_:_stateMachineArn">stateMachineArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the state machine to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_state_machine(
      stateMachineArn = "string"
    )
