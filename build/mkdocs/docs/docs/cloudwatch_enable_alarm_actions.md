<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatch_enable_alarm_actions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables the actions for the specified alarms

### Description

Enables the actions for the specified alarms.

### Usage

    cloudwatch_enable_alarm_actions(AlarmNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatch_enable_alarm_actions_:_AlarmNames">AlarmNames</code></td>
<td><p>[required] The names of the alarms.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$enable_alarm_actions(
      AlarmNames = list(
        "string"
      )
    )
