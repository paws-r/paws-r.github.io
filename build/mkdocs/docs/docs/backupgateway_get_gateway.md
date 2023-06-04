<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backupgateway_get_gateway</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## By providing the ARN (Amazon Resource Name), this API returns the gateway

### Description

By providing the ARN (Amazon Resource Name), this API returns the
gateway.

### Usage

    backupgateway_get_gateway(GatewayArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backupgateway_get_gateway_:_GatewayArn">GatewayArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
gateway.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Gateway = list(
        GatewayArn = "string",
        GatewayDisplayName = "string",
        GatewayType = "BACKUP_VM",
        HypervisorId = "string",
        LastSeenTime = as.POSIXct(
          "2015-01-01"
        ),
        MaintenanceStartTime = list(
          DayOfMonth = 123,
          DayOfWeek = 123,
          HourOfDay = 123,
          MinuteOfHour = 123
        ),
        NextUpdateAvailabilityTime = as.POSIXct(
          "2015-01-01"
        ),
        VpcEndpoint = "string"
      )
    )

### Request syntax

    svc$get_gateway(
      GatewayArn = "string"
    )
