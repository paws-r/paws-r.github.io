<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatch_disable_alarm_actions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disables the actions for the specified alarms

### Description

Disables the actions for the specified alarms. When an alarm's actions
are disabled, the alarm actions do not execute when the alarm state
changes.

### Usage

    cloudwatch_disable_alarm_actions(AlarmNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatch_disable_alarm_actions_:_AlarmNames">AlarmNames</code></td>
<td><p>[required] The names of the alarms.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disable_alarm_actions(
      AlarmNames = list(
        "string"
      )
    )
