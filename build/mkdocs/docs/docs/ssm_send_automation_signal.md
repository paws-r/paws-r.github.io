<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_send_automation_signal</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sends a signal to an Automation execution to change the current behavior or status of the execution

### Description

Sends a signal to an Automation execution to change the current behavior
or status of the execution.

### Usage

    ssm_send_automation_signal(AutomationExecutionId, SignalType, Payload)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_send_automation_signal_:_AutomationExecutionId">AutomationExecutionId</code></td>
<td><p>[required] The unique identifier for an existing Automation
execution that you want to send the signal to.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_send_automation_signal_:_SignalType">SignalType</code></td>
<td><p>[required] The type of signal to send to an Automation
execution.</p></td>
</tr>
<tr class="odd">
<td><code id="ssm_send_automation_signal_:_Payload">Payload</code></td>
<td><p>The data sent with the signal. The data schema depends on the
type of signal used in the request.</p>
<p>For <code>Approve</code> and <code>Reject</code> signal types, the
payload is an optional comment that you can send with the signal type.
For example:</p>
<p><code>Comment="Looks good"</code></p>
<p>For <code>StartStep</code> and <code>Resume</code> signal types, you
must send the name of the Automation step to start or resume as the
payload. For example:</p>
<p><code>StepName="step1"</code></p>
<p>For the <code>StopStep</code> signal type, you must send the step
execution ID as the payload. For example:</p>
<p><code>StepExecutionId="97fff367-fc5a-4299-aed8-0123456789ab"</code></p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$send_automation_signal(
      AutomationExecutionId = "string",
      SignalType = "Approve"|"Reject"|"StartStep"|"StopStep"|"Resume",
      Payload = list(
        list(
          "string"
        )
      )
    )
