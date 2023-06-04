<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_subnet_attribute</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies a subnet attribute

### Description

Modifies a subnet attribute. You can only modify one attribute at a
time.

Use this action to modify subnets on Amazon Web Services Outposts.

-   To modify a subnet on an Outpost rack, set both
    `MapCustomerOwnedIpOnLaunch` and `CustomerOwnedIpv4Pool`. These two
    parameters act as a single attribute.

-   To modify a subnet on an Outpost server, set either
    `EnableLniAtDeviceIndex` or `DisableLniAtDeviceIndex`.

For more information about Amazon Web Services Outposts, see the
following:

-   [Outpost
    servers](https://docs.aws.amazon.com/outposts/latest/userguide/)

-   [Outpost
    racks](https://docs.aws.amazon.com/outposts/latest/userguide/)

### Usage

    ec2_modify_subnet_attribute(AssignIpv6AddressOnCreation,
      MapPublicIpOnLaunch, SubnetId, MapCustomerOwnedIpOnLaunch,
      CustomerOwnedIpv4Pool, EnableDns64, PrivateDnsHostnameTypeOnLaunch,
      EnableResourceNameDnsARecordOnLaunch,
      EnableResourceNameDnsAAAARecordOnLaunch, EnableLniAtDeviceIndex,
      DisableLniAtDeviceIndex)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_modify_subnet_attribute_:_AssignIpv6AddressOnCreation">AssignIpv6AddressOnCreation</code></td>
<td><p>Specify <code>true</code> to indicate that network interfaces
created in the specified subnet should be assigned an IPv6 address. This
includes a network interface that's created when launching an instance
into the subnet (the instance therefore receives an IPv6 address).</p>
<p>If you enable the IPv6 addressing feature for your subnet, your
network interface or instance only receives an IPv6 address if it's
created using version <code>2016-11-15</code> or later of the Amazon EC2
API.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_subnet_attribute_:_MapPublicIpOnLaunch">MapPublicIpOnLaunch</code></td>
<td><p>Specify <code>true</code> to indicate that network interfaces
attached to instances created in the specified subnet should be assigned
a public IPv4 address.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_subnet_attribute_:_SubnetId">SubnetId</code></td>
<td><p>[required] The ID of the subnet.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_subnet_attribute_:_MapCustomerOwnedIpOnLaunch">MapCustomerOwnedIpOnLaunch</code></td>
<td><p>Specify <code>true</code> to indicate that network interfaces
attached to instances created in the specified subnet should be assigned
a customer-owned IPv4 address.</p>
<p>When this value is <code>true</code>, you must specify the
customer-owned IP pool using
<code>CustomerOwnedIpv4Pool</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_subnet_attribute_:_CustomerOwnedIpv4Pool">CustomerOwnedIpv4Pool</code></td>
<td><p>The customer-owned IPv4 address pool associated with the
subnet.</p>
<p>You must set this value when you specify <code>true</code> for
<code>MapCustomerOwnedIpOnLaunch</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_subnet_attribute_:_EnableDns64">EnableDns64</code></td>
<td><p>Indicates whether DNS queries made to the Amazon-provided DNS
Resolver in this subnet should return synthetic IPv6 addresses for
IPv4-only destinations.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_subnet_attribute_:_PrivateDnsHostnameTypeOnLaunch">PrivateDnsHostnameTypeOnLaunch</code></td>
<td><p>The type of hostname to assign to instances in the subnet at
launch. For IPv4-only and dual-stack (IPv4 and IPv6) subnets, an
instance DNS name can be based on the instance IPv4 address (ip-name) or
the instance ID (resource-name). For IPv6 only subnets, an instance DNS
name must be based on the instance ID (resource-name).</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_subnet_attribute_:_EnableResourceNameDnsARecordOnLaunch">EnableResourceNameDnsARecordOnLaunch</code></td>
<td><p>Indicates whether to respond to DNS queries for instance
hostnames with DNS A records.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_subnet_attribute_:_EnableResourceNameDnsAAAARecordOnLaunch">EnableResourceNameDnsAAAARecordOnLaunch</code></td>
<td><p>Indicates whether to respond to DNS queries for instance
hostnames with DNS AAAA records.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_subnet_attribute_:_EnableLniAtDeviceIndex">EnableLniAtDeviceIndex</code></td>
<td><p>Indicates the device position for local network interfaces in
this subnet. For example, <code>1</code> indicates local network
interfaces in this subnet are the secondary network interface (eth1). A
local network interface cannot be the primary network interface
(eth0).</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_subnet_attribute_:_DisableLniAtDeviceIndex">DisableLniAtDeviceIndex</code></td>
<td><p>Specify <code>true</code> to indicate that local network
interfaces at the current position should be disabled.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$modify_subnet_attribute(
      AssignIpv6AddressOnCreation = list(
        Value = TRUE|FALSE
      ),
      MapPublicIpOnLaunch = list(
        Value = TRUE|FALSE
      ),
      SubnetId = "string",
      MapCustomerOwnedIpOnLaunch = list(
        Value = TRUE|FALSE
      ),
      CustomerOwnedIpv4Pool = "string",
      EnableDns64 = list(
        Value = TRUE|FALSE
      ),
      PrivateDnsHostnameTypeOnLaunch = "ip-name"|"resource-name",
      EnableResourceNameDnsARecordOnLaunch = list(
        Value = TRUE|FALSE
      ),
      EnableResourceNameDnsAAAARecordOnLaunch = list(
        Value = TRUE|FALSE
      ),
      EnableLniAtDeviceIndex = 123,
      DisableLniAtDeviceIndex = list(
        Value = TRUE|FALSE
      )
    )

### Examples

    ## Not run: 
    # This example modifies the specified subnet so that all instances
    # launched into this subnet are assigned a public IP address.
    svc$modify_subnet_attribute(
      MapPublicIpOnLaunch = list(
        Value = TRUE
      ),
      SubnetId = "subnet-1a2b3c4d"
    )

    ## End(Not run)
