<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backupgateway_get_bandwidth_rate_limit_schedule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the bandwidth rate limit schedule for a specified gateway

### Description

Retrieves the bandwidth rate limit schedule for a specified gateway. By
default, gateways do not have bandwidth rate limit schedules, which
means no bandwidth rate limiting is in effect. Use this to get a
gateway's bandwidth rate limit schedule.

### Usage

    backupgateway_get_bandwidth_rate_limit_schedule(GatewayArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backupgateway_get_bandwidth_rate_limit_schedule_:_GatewayArn">GatewayArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the gateway. Use the
<a
href="https://docs.aws.amazon.com/aws-backup/latest/devguide/API_BGW_ListGateways.html"><code>list_gateways</code></a>
operation to return a list of gateways for your account and Amazon Web
Services Region.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BandwidthRateLimitIntervals = list(
        list(
          AverageUploadRateLimitInBitsPerSec = 123,
          DaysOfWeek = list(
            123
          ),
          EndHourOfDay = 123,
          EndMinuteOfHour = 123,
          StartHourOfDay = 123,
          StartMinuteOfHour = 123
        )
      ),
      GatewayArn = "string"
    )

### Request syntax

    svc$get_bandwidth_rate_limit_schedule(
      GatewayArn = "string"
    )
