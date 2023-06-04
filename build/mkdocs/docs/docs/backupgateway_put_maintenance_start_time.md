<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backupgateway_put_maintenance_start_time</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Set the maintenance start time for a gateway

### Description

Set the maintenance start time for a gateway.

### Usage

    backupgateway_put_maintenance_start_time(DayOfMonth, DayOfWeek,
      GatewayArn, HourOfDay, MinuteOfHour)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backupgateway_put_maintenance_start_time_:_DayOfMonth">DayOfMonth</code></td>
<td><p>The day of the month start maintenance on a gateway.</p>
<p>Valid values range from <code>Sunday</code> to
<code>Saturday</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="backupgateway_put_maintenance_start_time_:_DayOfWeek">DayOfWeek</code></td>
<td><p>The day of the week to start maintenance on a gateway.</p></td>
</tr>
<tr class="odd">
<td><code
id="backupgateway_put_maintenance_start_time_:_GatewayArn">GatewayArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) for the gateway, used
to specify its maintenance start time.</p></td>
</tr>
<tr class="even">
<td><code
id="backupgateway_put_maintenance_start_time_:_HourOfDay">HourOfDay</code></td>
<td><p>[required] The hour of the day to start maintenance on a
gateway.</p></td>
</tr>
<tr class="odd">
<td><code
id="backupgateway_put_maintenance_start_time_:_MinuteOfHour">MinuteOfHour</code></td>
<td><p>[required] The minute of the hour to start maintenance on a
gateway.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GatewayArn = "string"
    )

### Request syntax

    svc$put_maintenance_start_time(
      DayOfMonth = 123,
      DayOfWeek = 123,
      GatewayArn = "string",
      HourOfDay = 123,
      MinuteOfHour = 123
    )
