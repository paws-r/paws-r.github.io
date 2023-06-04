<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_list_virtual_interface_test_history</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the virtual interface failover test history

### Description

Lists the virtual interface failover test history.

### Usage

    directconnect_list_virtual_interface_test_history(testId,
      virtualInterfaceId, bgpPeers, status, maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_list_virtual_interface_test_history_:_testId">testId</code></td>
<td><p>The ID of the virtual interface failover test.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_list_virtual_interface_test_history_:_virtualInterfaceId">virtualInterfaceId</code></td>
<td><p>The ID of the virtual interface that was tested.</p></td>
</tr>
<tr class="odd">
<td><code
id="directconnect_list_virtual_interface_test_history_:_bgpPeers">bgpPeers</code></td>
<td><p>The BGP peers that were placed in the DOWN state during the
virtual interface failover test.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_list_virtual_interface_test_history_:_status">status</code></td>
<td><p>The status of the virtual interface failover test.</p></td>
</tr>
<tr class="odd">
<td><code
id="directconnect_list_virtual_interface_test_history_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p>
<p>If <code>MaxResults</code> is given a value larger than 100, only 100
results are returned.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_list_virtual_interface_test_history_:_nextToken">nextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      virtualInterfaceTestHistory = list(
        list(
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
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_virtual_interface_test_history(
      testId = "string",
      virtualInterfaceId = "string",
      bgpPeers = list(
        "string"
      ),
      status = "string",
      maxResults = 123,
      nextToken = "string"
    )
