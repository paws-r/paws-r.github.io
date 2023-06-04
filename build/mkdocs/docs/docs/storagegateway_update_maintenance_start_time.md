<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_update_maintenance_start_time</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a gateway's weekly maintenance start time information, including day and time of the week

### Description

Updates a gateway's weekly maintenance start time information, including
day and time of the week. The maintenance time is the time in your
gateway's time zone.

### Usage

    storagegateway_update_maintenance_start_time(GatewayARN, HourOfDay,
      MinuteOfHour, DayOfWeek, DayOfMonth)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_update_maintenance_start_time_:_GatewayARN">GatewayARN</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_update_maintenance_start_time_:_HourOfDay">HourOfDay</code></td>
<td><p>[required] The hour component of the maintenance start time
represented as <em>hh</em>, where <em>hh</em> is the hour (00 to 23).
The hour of the day is in the time zone of the gateway.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_update_maintenance_start_time_:_MinuteOfHour">MinuteOfHour</code></td>
<td><p>[required] The minute component of the maintenance start time
represented as <em>mm</em>, where <em>mm</em> is the minute (00 to 59).
The minute of the hour is in the time zone of the gateway.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_update_maintenance_start_time_:_DayOfWeek">DayOfWeek</code></td>
<td><p>The day of the week component of the maintenance start time week
represented as an ordinal number from 0 to 6, where 0 represents Sunday
and 6 Saturday.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_update_maintenance_start_time_:_DayOfMonth">DayOfMonth</code></td>
<td><p>The day of the month component of the maintenance start time
represented as an ordinal number from 1 to 28, where 1 represents the
first day of the month and 28 represents the last day of the
month.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GatewayARN = "string"
    )

### Request syntax

    svc$update_maintenance_start_time(
      GatewayARN = "string",
      HourOfDay = 123,
      MinuteOfHour = 123,
      DayOfWeek = 123,
      DayOfMonth = 123
    )

### Examples

    ## Not run: 
    # Updates a gateway's weekly maintenance start time information, including
    # day and time of the week. The maintenance time is in your gateway's time
    # zone.
    svc$update_maintenance_start_time(
      DayOfWeek = 2L,
      GatewayARN = "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
      HourOfDay = 0L,
      MinuteOfHour = 30L
    )

    ## End(Not run)
