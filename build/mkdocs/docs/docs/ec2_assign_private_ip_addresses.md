<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_assign_private_ip_addresses</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Assigns one or more secondary private IP addresses to the specified network interface

### Description

Assigns one or more secondary private IP addresses to the specified
network interface.

You can specify one or more specific secondary IP addresses, or you can
specify the number of secondary IP addresses to be automatically
assigned within the subnet's CIDR block range. The number of secondary
IP addresses that you can assign to an instance varies by instance type.
For information about instance types, see [Instance
Types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html)
in the *Amazon Elastic Compute Cloud User Guide*. For more information
about Elastic IP addresses, see [Elastic IP
Addresses](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html)
in the *Amazon Elastic Compute Cloud User Guide*.

When you move a secondary private IP address to another network
interface, any Elastic IP address that is associated with the IP address
is also moved.

Remapping an IP address is an asynchronous operation. When you move an
IP address from one network interface to another, check
`network/interfaces/macs/mac/local-ipv4s` in the instance metadata to
confirm that the remapping is complete.

You must specify either the IP addresses or the IP address count in the
request.

You can optionally use Prefix Delegation on the network interface. You
must specify either the IPv4 Prefix Delegation prefixes, or the IPv4
Prefix Delegation count. For information, see [Assigning prefixes to
Amazon EC2 network
interfaces](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-prefix-eni.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_assign_private_ip_addresses(AllowReassignment, NetworkInterfaceId,
      PrivateIpAddresses, SecondaryPrivateIpAddressCount, Ipv4Prefixes,
      Ipv4PrefixCount)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_assign_private_ip_addresses_:_AllowReassignment">AllowReassignment</code></td>
<td><p>Indicates whether to allow an IP address that is already assigned
to another network interface or instance to be reassigned to the
specified network interface.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_assign_private_ip_addresses_:_NetworkInterfaceId">NetworkInterfaceId</code></td>
<td><p>[required] The ID of the network interface.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_assign_private_ip_addresses_:_PrivateIpAddresses">PrivateIpAddresses</code></td>
<td><p>The IP addresses to be assigned as a secondary private IP address
to the network interface. You can't specify this parameter when also
specifying a number of secondary IP addresses.</p>
<p>If you don't specify an IP address, Amazon EC2 automatically selects
an IP address within the subnet range.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_assign_private_ip_addresses_:_SecondaryPrivateIpAddressCount">SecondaryPrivateIpAddressCount</code></td>
<td><p>The number of secondary IP addresses to assign to the network
interface. You can't specify this parameter when also specifying private
IP addresses.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_assign_private_ip_addresses_:_Ipv4Prefixes">Ipv4Prefixes</code></td>
<td><p>One or more IPv4 prefixes assigned to the network interface. You
cannot use this option if you use the <code>Ipv4PrefixCount</code>
option.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_assign_private_ip_addresses_:_Ipv4PrefixCount">Ipv4PrefixCount</code></td>
<td><p>The number of IPv4 prefixes that Amazon Web Services
automatically assigns to the network interface. You cannot use this
option if you use the <code
style="white-space: pre;">⁠Ipv4 Prefixes⁠</code> option.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NetworkInterfaceId = "string",
      AssignedPrivateIpAddresses = list(
        list(
          PrivateIpAddress = "string"
        )
      ),
      AssignedIpv4Prefixes = list(
        list(
          Ipv4Prefix = "string"
        )
      )
    )

### Request syntax

    svc$assign_private_ip_addresses(
      AllowReassignment = TRUE|FALSE,
      NetworkInterfaceId = "string",
      PrivateIpAddresses = list(
        "string"
      ),
      SecondaryPrivateIpAddressCount = 123,
      Ipv4Prefixes = list(
        "string"
      ),
      Ipv4PrefixCount = 123
    )

### Examples

    ## Not run: 
    # This example assigns the specified secondary private IP address to the
    # specified network interface.
    svc$assign_private_ip_addresses(
      NetworkInterfaceId = "eni-e5aa89a3",
      PrivateIpAddresses = list(
        "10.0.0.82"
      )
    )

    # This example assigns two secondary private IP addresses to the specified
    # network interface. Amazon EC2 automatically assigns these IP addresses
    # from the available IP addresses in the CIDR block range of the subnet
    # the network interface is associated with.
    svc$assign_private_ip_addresses(
      NetworkInterfaceId = "eni-e5aa89a3",
      SecondaryPrivateIpAddressCount = 2L
    )

    ## End(Not run)
