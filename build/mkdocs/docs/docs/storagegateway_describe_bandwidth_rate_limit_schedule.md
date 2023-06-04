<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_describe_bandwidth_rate_limit_schedule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the bandwidth rate limit schedule of a gateway

### Description

Returns information about the bandwidth rate limit schedule of a
gateway. By default, gateways do not have bandwidth rate limit
schedules, which means no bandwidth rate limiting is in effect. This
operation is supported only for volume, tape and S3 file gateways. FSx
file gateways do not support bandwidth rate limits.

This operation returns information about a gateway's bandwidth rate
limit schedule. A bandwidth rate limit schedule consists of one or more
bandwidth rate limit intervals. A bandwidth rate limit interval defines
a period of time on one or more days of the week, during which bandwidth
rate limits are specified for uploading, downloading, or both.

A bandwidth rate limit interval consists of one or more days of the
week, a start hour and minute, an ending hour and minute, and bandwidth
rate limits for uploading and downloading

If no bandwidth rate limit schedule intervals are set for the gateway,
this operation returns an empty response. To specify which gateway to
describe, use the Amazon Resource Name (ARN) of the gateway in your
request.

### Usage

    storagegateway_describe_bandwidth_rate_limit_schedule(GatewayARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_describe_bandwidth_rate_limit_schedule_:_GatewayARN">GatewayARN</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
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

### Request syntax

    svc$describe_bandwidth_rate_limit_schedule(
      GatewayARN = "string"
    )
