<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_unassign_ipv_6_addresses</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Unassigns one or more IPv6 addresses IPv4 Prefix Delegation prefixes from a network interface

### Description

Unassigns one or more IPv6 addresses IPv4 Prefix Delegation prefixes
from a network interface.

### Usage

    ec2_unassign_ipv_6_addresses(Ipv6Addresses, Ipv6Prefixes,
      NetworkInterfaceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_unassign_ipv_6_addresses_:_Ipv6Addresses">Ipv6Addresses</code></td>
<td><p>The IPv6 addresses to unassign from the network
interface.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_unassign_ipv_6_addresses_:_Ipv6Prefixes">Ipv6Prefixes</code></td>
<td><p>The IPv6 prefixes to unassign from the network
interface.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_unassign_ipv_6_addresses_:_NetworkInterfaceId">NetworkInterfaceId</code></td>
<td><p>[required] The ID of the network interface.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NetworkInterfaceId = "string",
      UnassignedIpv6Addresses = list(
        "string"
      ),
      UnassignedIpv6Prefixes = list(
        "string"
      )
    )

### Request syntax

    svc$unassign_ipv_6_addresses(
      Ipv6Addresses = list(
        "string"
      ),
      Ipv6Prefixes = list(
        "string"
      ),
      NetworkInterfaceId = "string"
    )
