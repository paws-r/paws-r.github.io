<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_describe_availability_monitor_test</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the most recent high availability monitoring test that was performed on the host in a cluster

### Description

Returns information about the most recent high availability monitoring
test that was performed on the host in a cluster. If a test isn't
performed, the status and start time in the response would be null.

### Usage

    storagegateway_describe_availability_monitor_test(GatewayARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_describe_availability_monitor_test_:_GatewayARN">GatewayARN</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GatewayARN = "string",
      Status = "COMPLETE"|"FAILED"|"PENDING",
      StartTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_availability_monitor_test(
      GatewayARN = "string"
    )
