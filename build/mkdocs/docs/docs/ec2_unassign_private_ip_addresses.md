<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_unassign_private_ip_addresses</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Unassigns one or more secondary private IP addresses, or IPv4 Prefix Delegation prefixes from a network interface

### Description

Unassigns one or more secondary private IP addresses, or IPv4 Prefix
Delegation prefixes from a network interface.

### Usage

    ec2_unassign_private_ip_addresses(NetworkInterfaceId,
      PrivateIpAddresses, Ipv4Prefixes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_unassign_private_ip_addresses_:_NetworkInterfaceId">NetworkInterfaceId</code></td>
<td><p>[required] The ID of the network interface.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_unassign_private_ip_addresses_:_PrivateIpAddresses">PrivateIpAddresses</code></td>
<td><p>The secondary private IP addresses to unassign from the network
interface. You can specify this option multiple times to unassign more
than one IP address.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_unassign_private_ip_addresses_:_Ipv4Prefixes">Ipv4Prefixes</code></td>
<td><p>The IPv4 prefixes to unassign from the network
interface.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$unassign_private_ip_addresses(
      NetworkInterfaceId = "string",
      PrivateIpAddresses = list(
        "string"
      ),
      Ipv4Prefixes = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This example unassigns the specified private IP address from the
    # specified network interface.
    svc$unassign_private_ip_addresses(
      NetworkInterfaceId = "eni-e5aa89a3",
      PrivateIpAddresses = list(
        "10.0.0.82"
      )
    )

    ## End(Not run)
