<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_stop_bgp_failover_test</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops the virtual interface failover test

### Description

Stops the virtual interface failover test.

### Usage

    directconnect_stop_bgp_failover_test(virtualInterfaceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_stop_bgp_failover_test_:_virtualInterfaceId">virtualInterfaceId</code></td>
<td><p>[required] The ID of the virtual interface you no longer want to
test.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      virtualInterfaceTest = list(
        testId = "string",
        virtualInterfaceId = "string",
        bgpPeers = list(
          "string"
        ),
        status = "string",
        ownerAccount = "string",
        testDurationInMinutes = 123,
        startTime = as.POSIXct(
          "2015-01-01"
        ),
        endTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$stop_bgp_failover_test(
      virtualInterfaceId = "string"
    )
