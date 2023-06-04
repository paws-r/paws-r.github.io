<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_assign_ipv_6_addresses</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Assigns one or more IPv6 addresses to the specified network interface

### Description

Assigns one or more IPv6 addresses to the specified network interface.
You can specify one or more specific IPv6 addresses, or you can specify
the number of IPv6 addresses to be automatically assigned from within
the subnet's IPv6 CIDR block range. You can assign as many IPv6
addresses to a network interface as you can assign private IPv4
addresses, and the limit varies per instance type. For information, see
[IP Addresses Per Network Interface Per Instance
Type](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#AvailableIpPerENI)
in the *Amazon Elastic Compute Cloud User Guide*.

You must specify either the IPv6 addresses or the IPv6 address count in
the request.

You can optionally use Prefix Delegation on the network interface. You
must specify either the IPV6 Prefix Delegation prefixes, or the IPv6
Prefix Delegation count. For information, see [Assigning prefixes to
Amazon EC2 network
interfaces](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-prefix-eni.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_assign_ipv_6_addresses(Ipv6AddressCount, Ipv6Addresses,
      Ipv6PrefixCount, Ipv6Prefixes, NetworkInterfaceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_assign_ipv_6_addresses_:_Ipv6AddressCount">Ipv6AddressCount</code></td>
<td><p>The number of additional IPv6 addresses to assign to the network
interface. The specified number of IPv6 addresses are assigned in
addition to the existing IPv6 addresses that are already assigned to the
network interface. Amazon EC2 automatically selects the IPv6 addresses
from the subnet range. You can't use this option if specifying specific
IPv6 addresses.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_assign_ipv_6_addresses_:_Ipv6Addresses">Ipv6Addresses</code></td>
<td><p>The IPv6 addresses to be assigned to the network interface. You
can't use this option if you're specifying a number of IPv6
addresses.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_assign_ipv_6_addresses_:_Ipv6PrefixCount">Ipv6PrefixCount</code></td>
<td><p>The number of IPv6 prefixes that Amazon Web Services
automatically assigns to the network interface. You cannot use this
option if you use the <code>Ipv6Prefixes</code> option.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_assign_ipv_6_addresses_:_Ipv6Prefixes">Ipv6Prefixes</code></td>
<td><p>One or more IPv6 prefixes assigned to the network interface. You
cannot use this option if you use the <code>Ipv6PrefixCount</code>
option.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_assign_ipv_6_addresses_:_NetworkInterfaceId">NetworkInterfaceId</code></td>
<td><p>[required] The ID of the network interface.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AssignedIpv6Addresses = list(
        "string"
      ),
      AssignedIpv6Prefixes = list(
        "string"
      ),
      NetworkInterfaceId = "string"
    )

### Request syntax

    svc$assign_ipv_6_addresses(
      Ipv6AddressCount = 123,
      Ipv6Addresses = list(
        "string"
      ),
      Ipv6PrefixCount = 123,
      Ipv6Prefixes = list(
        "string"
      ),
      NetworkInterfaceId = "string"
    )
