<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_update_bandwidth_rate_limit_schedule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the bandwidth rate limit schedule for a specified gateway

### Description

Updates the bandwidth rate limit schedule for a specified gateway. By
default, gateways do not have bandwidth rate limit schedules, which
means no bandwidth rate limiting is in effect. Use this to initiate or
update a gateway's bandwidth rate limit schedule. This operation is
supported only for volume, tape and S3 file gateways. FSx file gateways
do not support bandwidth rate limits.

### Usage

    storagegateway_update_bandwidth_rate_limit_schedule(GatewayARN,
      BandwidthRateLimitIntervals)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_update_bandwidth_rate_limit_schedule_:_GatewayARN">GatewayARN</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_update_bandwidth_rate_limit_schedule_:_BandwidthRateLimitIntervals">BandwidthRateLimitIntervals</code></td>
<td><p>[required] An array containing bandwidth rate limit schedule
intervals for a gateway. When no bandwidth rate limit intervals have
been scheduled, the array is empty.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GatewayARN = "string"
    )

### Request syntax

    svc$update_bandwidth_rate_limit_schedule(
      GatewayARN = "string",
      BandwidthRateLimitIntervals = list(
        list(
          StartHourOfDay = 123,
          StartMinuteOfHour = 123,
          EndHourOfDay = 123,
          EndMinuteOfHour = 123,
          DaysOfWeek = list(
            123
          ),
          AverageUploadRateLimitInBitsPerSec = 123,
          AverageDownloadRateLimitInBitsPerSec = 123
        )
      )
    )
