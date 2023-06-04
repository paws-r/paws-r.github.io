<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_default_subnet</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a default subnet with a size /20 IPv4 CIDR block in the specified Availability Zone in your default VPC

### Description

Creates a default subnet with a size `⁠/20⁠` IPv4 CIDR block in the
specified Availability Zone in your default VPC. You can have only one
default subnet per Availability Zone. For more information, see
[Creating a default
subnet](https://docs.aws.amazon.com/vpc/latest/userguide/default-vpc.html#create-default-subnet)
in the *Amazon Virtual Private Cloud User Guide*.

### Usage

    ec2_create_default_subnet(AvailabilityZone, DryRun, Ipv6Native)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_create_default_subnet_:_AvailabilityZone">AvailabilityZone</code></td>
<td><p>[required] The Availability Zone in which to create the default
subnet.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_create_default_subnet_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_default_subnet_:_Ipv6Native">Ipv6Native</code></td>
<td><p>Indicates whether to create an IPv6 only subnet. If you already
have a default subnet for this Availability Zone, you must delete it
before you can create an IPv6 only subnet.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Subnet = list(
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
    )

### Request syntax

    svc$create_default_subnet(
      AvailabilityZone = "string",
      DryRun = TRUE|FALSE,
      Ipv6Native = TRUE|FALSE
    )
