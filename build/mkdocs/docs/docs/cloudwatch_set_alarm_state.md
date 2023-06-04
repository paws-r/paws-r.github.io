<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatch_set_alarm_state</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Temporarily sets the state of an alarm for testing purposes

### Description

Temporarily sets the state of an alarm for testing purposes. When the
updated state differs from the previous value, the action configured for
the appropriate state is invoked. For example, if your alarm is
configured to send an Amazon SNS message when an alarm is triggered,
temporarily changing the alarm state to `ALARM` sends an SNS message.

Metric alarms returns to their actual state quickly, often within
seconds. Because the metric alarm state change happens quickly, it is
typically only visible in the alarm's **History** tab in the Amazon
CloudWatch console or through `describe_alarm_history`.

If you use `set_alarm_state` on a composite alarm, the composite alarm
is not guaranteed to return to its actual state. It returns to its
actual state only once any of its children alarms change state. It is
also reevaluated if you update its configuration.

If an alarm triggers EC2 Auto Scaling policies or application Auto
Scaling policies, you must include information in the `StateReasonData`
parameter to enable the policy to take the correct action.

### Usage

    cloudwatch_set_alarm_state(AlarmName, StateValue, StateReason,
      StateReasonData)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatch_set_alarm_state_:_AlarmName">AlarmName</code></td>
<td><p>[required] The name of the alarm.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_set_alarm_state_:_StateValue">StateValue</code></td>
<td><p>[required] The value of the state.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_set_alarm_state_:_StateReason">StateReason</code></td>
<td><p>[required] The reason that this alarm is set to this specific
state, in text format.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_set_alarm_state_:_StateReasonData">StateReasonData</code></td>
<td><p>The reason that this alarm is set to this specific state, in JSON
format.</p>
<p>For SNS or EC2 alarm actions, this is just informational. But for EC2
Auto Scaling or application Auto Scaling alarm actions, the Auto Scaling
policy uses the information in this field to take the correct
action.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$set_alarm_state(
      AlarmName = "string",
      StateValue = "OK"|"ALARM"|"INSUFFICIENT_DATA",
      StateReason = "string",
      StateReasonData = "string"
    )
