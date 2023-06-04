<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_start_bgp_failover_test</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts the virtual interface failover test that verifies your configuration meets your resiliency requirements by placing the BGP peering session in the DOWN state

### Description

Starts the virtual interface failover test that verifies your
configuration meets your resiliency requirements by placing the BGP
peering session in the DOWN state. You can then send traffic to verify
that there are no outages.

You can run the test on public, private, transit, and hosted virtual
interfaces.

You can use `list_virtual_interface_test_history` to view the virtual
interface test history.

If you need to stop the test before the test interval completes, use
`stop_bgp_failover_test`.

### Usage

    directconnect_start_bgp_failover_test(virtualInterfaceId, bgpPeers,
      testDurationInMinutes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_start_bgp_failover_test_:_virtualInterfaceId">virtualInterfaceId</code></td>
<td><p>[required] The ID of the virtual interface you want to
test.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_start_bgp_failover_test_:_bgpPeers">bgpPeers</code></td>
<td><p>The BGP peers to place in the DOWN state.</p></td>
</tr>
<tr class="odd">
<td><code
id="directconnect_start_bgp_failover_test_:_testDurationInMinutes">testDurationInMinutes</code></td>
<td><p>The time in minutes that the virtual interface failover test will
last.</p>
<p>Maximum value: 4,320 minutes (72 hours).</p>
<p>Default: 180 minutes (3 hours).</p></td>
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

    svc$start_bgp_failover_test(
      virtualInterfaceId = "string",
      bgpPeers = list(
        "string"
      ),
      testDurationInMinutes = 123
    )
