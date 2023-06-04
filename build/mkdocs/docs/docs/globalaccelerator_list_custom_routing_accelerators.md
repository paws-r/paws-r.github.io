<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>globalaccelerator_list_custom_routing_accelerators</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List the custom routing accelerators for an Amazon Web Services account

### Description

List the custom routing accelerators for an Amazon Web Services account.

### Usage

    globalaccelerator_list_custom_routing_accelerators(MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="globalaccelerator_list_custom_routing_accelerators_:_MaxResults">MaxResults</code></td>
<td><p>The number of custom routing Global Accelerator objects that you
want to return with this call. The default value is 10.</p></td>
</tr>
<tr class="even">
<td><code
id="globalaccelerator_list_custom_routing_accelerators_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results. You receive this token
from a previous call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Accelerators = list(
        list(
          AcceleratorArn = "string",
          Name = "string",
          IpAddressType = "IPV4"|"DUAL_STACK",
          Enabled = TRUE|FALSE,
          IpSets = list(
            list(
              IpFamily = "string",
              IpAddresses = list(
                "string"
              ),
              IpAddressFamily = "IPv4"|"IPv6"
            )
          ),
          DnsName = "string",
          Status = "DEPLOYED"|"IN_PROGRESS",
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_custom_routing_accelerators(
      MaxResults = 123,
      NextToken = "string"
    )
