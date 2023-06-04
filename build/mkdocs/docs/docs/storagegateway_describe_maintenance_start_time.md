<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_describe_maintenance_start_time</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns your gateway's weekly maintenance start time including the day and time of the week

### Description

Returns your gateway's weekly maintenance start time including the day
and time of the week. Note that values are in terms of the gateway's
time zone.

### Usage

    storagegateway_describe_maintenance_start_time(GatewayARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_describe_maintenance_start_time_:_GatewayARN">GatewayARN</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GatewayARN = "string",
      HourOfDay = 123,
      MinuteOfHour = 123,
      DayOfWeek = 123,
      DayOfMonth = 123,
      Timezone = "string"
    )

### Request syntax

    svc$describe_maintenance_start_time(
      GatewayARN = "string"
    )

### Examples

    ## Not run: 
    # Returns your gateway's weekly maintenance start time including the day
    # and time of the week.
    svc$describe_maintenance_start_time(
      GatewayARN = "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
    )

    ## End(Not run)
