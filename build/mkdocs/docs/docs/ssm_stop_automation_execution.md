<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_stop_automation_execution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stop an Automation that is currently running

### Description

Stop an Automation that is currently running.

### Usage

    ssm_stop_automation_execution(AutomationExecutionId, Type)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_stop_automation_execution_:_AutomationExecutionId">AutomationExecutionId</code></td>
<td><p>[required] The execution ID of the Automation to stop.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_stop_automation_execution_:_Type">Type</code></td>
<td><p>The stop request type. Valid types include the following: Cancel
and Complete. The default type is Cancel.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_automation_execution(
      AutomationExecutionId = "string",
      Type = "Complete"|"Cancel"
    )
