<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_start_availability_monitor_test</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Start a test that verifies that the specified gateway is configured for High Availability monitoring in your host environment

### Description

Start a test that verifies that the specified gateway is configured for
High Availability monitoring in your host environment. This request only
initiates the test and that a successful response only indicates that
the test was started. It doesn't indicate that the test passed. For the
status of the test, invoke the `describe_availability_monitor_test` API.

Starting this test will cause your gateway to go offline for a brief
period.

### Usage

    storagegateway_start_availability_monitor_test(GatewayARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_start_availability_monitor_test_:_GatewayARN">GatewayARN</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GatewayARN = "string"
    )

### Request syntax

    svc$start_availability_monitor_test(
      GatewayARN = "string"
    )
