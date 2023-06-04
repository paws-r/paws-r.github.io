<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_update_gateway_information</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a gateway's metadata, which includes the gateway's name and time zone

### Description

Updates a gateway's metadata, which includes the gateway's name and time
zone. To specify which gateway to update, use the Amazon Resource Name
(ARN) of the gateway in your request.

For gateways activated after September 2, 2015, the gateway's ARN
contains the gateway ID rather than the gateway name. However, changing
the name of the gateway has no effect on the gateway's ARN.

### Usage

    storagegateway_update_gateway_information(GatewayARN, GatewayName,
      GatewayTimezone, CloudWatchLogGroupARN, GatewayCapacity)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_update_gateway_information_:_GatewayARN">GatewayARN</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_update_gateway_information_:_GatewayName">GatewayName</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_update_gateway_information_:_GatewayTimezone">GatewayTimezone</code></td>
<td><p>A value that indicates the time zone of the gateway.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_update_gateway_information_:_CloudWatchLogGroupARN">CloudWatchLogGroupARN</code></td>
<td><p>The Amazon Resource Name (ARN) of the Amazon CloudWatch log group
that you want to use to monitor and log events in the gateway.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/WhatIsCloudWatchLogs.html">What
is Amazon CloudWatch Logs?</a></p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_update_gateway_information_:_GatewayCapacity">GatewayCapacity</code></td>
<td><p>Specifies the size of the gateway's metadata cache.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GatewayARN = "string",
      GatewayName = "string"
    )

### Request syntax

    svc$update_gateway_information(
      GatewayARN = "string",
      GatewayName = "string",
      GatewayTimezone = "string",
      CloudWatchLogGroupARN = "string",
      GatewayCapacity = "Small"|"Medium"|"Large"
    )

### Examples

    ## Not run: 
    # Updates a gateway's metadata, which includes the gateway's name and time
    # zone.
    svc$update_gateway_information(
      GatewayARN = "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
      GatewayName = "MyGateway2",
      GatewayTimezone = "GMT-12:00"
    )

    ## End(Not run)
