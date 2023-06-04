<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_subnets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more of your subnets

### Description

Describes one or more of your subnets.

For more information, see [Your VPC and
subnets](https://docs.aws.amazon.com/vpc/latest/userguide/how-it-works.html)
in the *Amazon Virtual Private Cloud User Guide*.

### Usage

    ec2_describe_subnets(Filters, SubnetIds, DryRun, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_describe_subnets_:_Filters">Filters</code></td>
<td><p>One or more filters.</p>
<ul>
<li><p><code>availability-zone</code> - The Availability Zone for the
subnet. You can also use <code>availabilityZone</code> as the filter
name.</p></li>
<li><p><code>availability-zone-id</code> - The ID of the Availability
Zone for the subnet. You can also use <code>availabilityZoneId</code> as
the filter name.</p></li>
<li><p><code>available-ip-address-count</code> - The number of IPv4
addresses in the subnet that are available.</p></li>
<li><p><code>cidr-block</code> - The IPv4 CIDR block of the subnet. The
CIDR block you specify must exactly match the subnet's CIDR block for
information to be returned for the subnet. You can also use
<code>cidr</code> or <code>cidrBlock</code> as the filter
names.</p></li>
<li><p><code>customer-owned-ipv4-pool</code> - The customer-owned IPv4
address pool associated with the subnet.</p></li>
<li><p><code style="white-space: pre;">⁠default-for-az⁠</code> - Indicates
whether this is the default subnet for the Availability Zone
(<code>true</code> | <code>false</code>). You can also use
<code>defaultForAz</code> as the filter name.</p></li>
<li><p><code>enable-dns64</code> - Indicates whether DNS queries made to
the Amazon-provided DNS Resolver in this subnet should return synthetic
IPv6 addresses for IPv4-only destinations.</p></li>
<li><p><code>enable-lni-at-device-index</code> - Indicates the device
position for local network interfaces in this subnet. For example,
<code>1</code> indicates local network interfaces in this subnet are the
secondary network interface (eth1).</p></li>
<li><p><code>ipv6-cidr-block-association.ipv6-cidr-block</code> - An
IPv6 CIDR block associated with the subnet.</p></li>
<li><p><code>ipv6-cidr-block-association.association-id</code> - An
association ID for an IPv6 CIDR block associated with the
subnet.</p></li>
<li><p><code>ipv6-cidr-block-association.state</code> - The state of an
IPv6 CIDR block associated with the subnet.</p></li>
<li><p><code>ipv6-native</code> - Indicates whether this is an IPv6 only
subnet (<code>true</code> | <code>false</code>).</p></li>
<li><p><code>map-customer-owned-ip-on-launch</code> - Indicates whether
a network interface created in this subnet (including a network
interface created by <code>run_instances</code>) receives a
customer-owned IPv4 address.</p></li>
<li><p><code>map-public-ip-on-launch</code> - Indicates whether
instances launched in this subnet receive a public IPv4
address.</p></li>
<li><p><code>outpost-arn</code> - The Amazon Resource Name (ARN) of the
Outpost.</p></li>
<li><p><code>owner-id</code> - The ID of the Amazon Web Services account
that owns the subnet.</p></li>
<li><p><code>private-dns-name-options-on-launch.hostname-type</code> -
The type of hostname to assign to instances in the subnet at launch. For
IPv4-only and dual-stack (IPv4 and IPv6) subnets, an instance DNS name
can be based on the instance IPv4 address (ip-name) or the instance ID
(resource-name). For IPv6 only subnets, an instance DNS name must be
based on the instance ID (resource-name).</p></li>
<li><p><code>private-dns-name-options-on-launch.enable-resource-name-dns-a-record</code>
- Indicates whether to respond to DNS queries for instance hostnames
with DNS A records.</p></li>
<li><p><code>private-dns-name-options-on-launch.enable-resource-name-dns-aaaa-record</code>
- Indicates whether to respond to DNS queries for instance hostnames
with DNS AAAA records.</p></li>
<li><p><code>state</code> - The state of the subnet
(<code>pending</code> | <code>available</code>).</p></li>
<li><p><code>subnet-arn</code> - The Amazon Resource Name (ARN) of the
subnet.</p></li>
<li><p><code>subnet-id</code> - The ID of the subnet.</p></li>
<li><p><code>tag</code>:\&lt;key\&gt; - The key/value combination of a
tag assigned to the resource. Use the tag key in the filter name and the
tag value as the filter value. For example, to find all resources that
have a tag with the key <code>Owner</code> and the value
<code>TeamA</code>, specify <code>tag:Owner</code> for the filter name
and <code>TeamA</code> for the filter value.</p></li>
<li><p><code>tag-key</code> - The key of a tag assigned to the resource.
Use this filter to find all resources assigned a tag with a specific
key, regardless of the tag value.</p></li>
<li><p><code>vpc-id</code> - The ID of the VPC for the subnet.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="ec2_describe_subnets_:_SubnetIds">SubnetIds</code></td>
<td><p>One or more subnet IDs.</p>
<p>Default: Describes all your subnets.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_describe_subnets_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_describe_subnets_:_NextToken">NextToken</code></td>
<td><p>The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous
request.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_describe_subnets_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this request. To get
the next page of items, make another request with the token returned in
the output. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination">Pagination</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Subnets = list(
        list(
          AvailabilityZone = "string",
          AvailabilityZoneId = "string",
          AvailableIpAddressCount = 123,
          CidrBlock = "string",
          DefaultForAz = TRUE|FALSE,
          EnableLniAtDeviceIndex = 123,
          MapPublicIpOnLaunch = TRUE|FALSE,
          MapCustomerOwnedIpOnLaunch = TRUE|FALSE,
          CustomerOwnedIpv4Pool = "string",
          State = "pending"|"available",
          SubnetId = "string",
          VpcId = "string",
          OwnerId = "string",
          AssignIpv6AddressOnCreation = TRUE|FALSE,
          Ipv6CidrBlockAssociationSet = list(
            list(
              AssociationId = "string",
              Ipv6CidrBlock = "string",
              Ipv6CidrBlockState = list(
                State = "associating"|"associated"|"disassociating"|"disassociated"|"failing"|"failed",
                StatusMessage = "string"
              )
            )
          ),
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          SubnetArn = "string",
          OutpostArn = "string",
          EnableDns64 = TRUE|FALSE,
          Ipv6Native = TRUE|FALSE,
          PrivateDnsNameOptionsOnLaunch = list(
            HostnameType = "ip-name"|"resource-name",
            EnableResourceNameDnsARecord = TRUE|FALSE,
            EnableResourceNameDnsAAAARecord = TRUE|FALSE
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_subnets(
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      SubnetIds = list(
        "string"
      ),
      DryRun = TRUE|FALSE,
      NextToken = "string",
      MaxResults = 123
    )

### Examples

    ## Not run: 
    # This example describes the subnets for the specified VPC.
    svc$describe_subnets(
      Filters = list(
        list(
          Name = "vpc-id",
          Values = list(
            "vpc-a01106c2"
          )
        )
      )
    )

    ## End(Not run)
