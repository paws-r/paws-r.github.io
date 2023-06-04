<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointemail_get_dedicated_ips</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List the dedicated IP addresses that are associated with your Amazon Pinpoint account

### Description

List the dedicated IP addresses that are associated with your Amazon
Pinpoint account.

### Usage

    pinpointemail_get_dedicated_ips(PoolName, NextToken, PageSize)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointemail_get_dedicated_ips_:_PoolName">PoolName</code></td>
<td><p>The name of the IP pool that the dedicated IP address is
associated with.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointemail_get_dedicated_ips_:_NextToken">NextToken</code></td>
<td><p>A token returned from a previous call to
<code>get_dedicated_ips</code> to indicate the position of the dedicated
IP pool in the list of IP pools.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointemail_get_dedicated_ips_:_PageSize">PageSize</code></td>
<td><p>The number of results to show in a single call to
<code>GetDedicatedIpsRequest</code>. If the number of results is larger
than the number you specified in this parameter, then the response
includes a <code>NextToken</code> element, which you can use to obtain
additional results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DedicatedIps = list(
        list(
          Ip = "string",
          WarmupStatus = "IN_PROGRESS"|"DONE",
          WarmupPercentage = 123,
          PoolName = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_dedicated_ips(
      PoolName = "string",
      NextToken = "string",
      PageSize = 123
    )
