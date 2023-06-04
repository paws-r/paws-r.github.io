<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_associate_vpc_cidr_block</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates a CIDR block with your VPC

### Description

Associates a CIDR block with your VPC. You can associate a secondary
IPv4 CIDR block, an Amazon-provided IPv6 CIDR block, or an IPv6 CIDR
block from an IPv6 address pool that you provisioned through bring your
own IP addresses
([BYOIP](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-byoip.html)).
The IPv6 CIDR block size is fixed at /56.

You must specify one of the following in the request: an IPv4 CIDR
block, an IPv6 pool, or an Amazon-provided IPv6 CIDR block.

For more information about associating CIDR blocks with your VPC and
applicable restrictions, see [VPC and subnet
sizing](https://docs.aws.amazon.com/vpc/latest/userguide/how-it-works.html#VPC_Sizing)
in the *Amazon Virtual Private Cloud User Guide*.

### Usage

    ec2_associate_vpc_cidr_block(AmazonProvidedIpv6CidrBlock, CidrBlock,
      VpcId, Ipv6CidrBlockNetworkBorderGroup, Ipv6Pool, Ipv6CidrBlock,
      Ipv4IpamPoolId, Ipv4NetmaskLength, Ipv6IpamPoolId, Ipv6NetmaskLength)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_associate_vpc_cidr_block_:_AmazonProvidedIpv6CidrBlock">AmazonProvidedIpv6CidrBlock</code></td>
<td><p>Requests an Amazon-provided IPv6 CIDR block with a /56 prefix
length for the VPC. You cannot specify the range of IPv6 addresses, or
the size of the CIDR block.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_associate_vpc_cidr_block_:_CidrBlock">CidrBlock</code></td>
<td><p>An IPv4 CIDR block to associate with the VPC.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_associate_vpc_cidr_block_:_VpcId">VpcId</code></td>
<td><p>[required] The ID of the VPC.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_associate_vpc_cidr_block_:_Ipv6CidrBlockNetworkBorderGroup">Ipv6CidrBlockNetworkBorderGroup</code></td>
<td><p>The name of the location from which we advertise the IPV6 CIDR
block. Use this parameter to limit the CIDR block to this location.</p>
<p>You must set <code>AmazonProvidedIpv6CidrBlock</code> to
<code>true</code> to use this parameter.</p>
<p>You can have one IPv6 CIDR block association per network border
group.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_associate_vpc_cidr_block_:_Ipv6Pool">Ipv6Pool</code></td>
<td><p>The ID of an IPv6 address pool from which to allocate the IPv6
CIDR block.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_associate_vpc_cidr_block_:_Ipv6CidrBlock">Ipv6CidrBlock</code></td>
<td><p>An IPv6 CIDR block from the IPv6 address pool. You must also
specify <code>Ipv6Pool</code> in the request.</p>
<p>To let Amazon choose the IPv6 CIDR block for you, omit this
parameter.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_associate_vpc_cidr_block_:_Ipv4IpamPoolId">Ipv4IpamPoolId</code></td>
<td><p>Associate a CIDR allocated from an IPv4 IPAM pool to a VPC. For
more information about Amazon VPC IP Address Manager (IPAM), see <a
href="https://docs.aws.amazon.com/vpc/latest/ipam/">What is IPAM?</a> in
the <em>Amazon VPC IPAM User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_associate_vpc_cidr_block_:_Ipv4NetmaskLength">Ipv4NetmaskLength</code></td>
<td><p>The netmask length of the IPv4 CIDR you would like to associate
from an Amazon VPC IP Address Manager (IPAM) pool. For more information
about IPAM, see <a
href="https://docs.aws.amazon.com/vpc/latest/ipam/">What is IPAM?</a> in
the <em>Amazon VPC IPAM User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_associate_vpc_cidr_block_:_Ipv6IpamPoolId">Ipv6IpamPoolId</code></td>
<td><p>Associates a CIDR allocated from an IPv6 IPAM pool to a VPC. For
more information about Amazon VPC IP Address Manager (IPAM), see <a
href="https://docs.aws.amazon.com/vpc/latest/ipam/">What is IPAM?</a> in
the <em>Amazon VPC IPAM User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_associate_vpc_cidr_block_:_Ipv6NetmaskLength">Ipv6NetmaskLength</code></td>
<td><p>The netmask length of the IPv6 CIDR you would like to associate
from an Amazon VPC IP Address Manager (IPAM) pool. For more information
about IPAM, see <a
href="https://docs.aws.amazon.com/vpc/latest/ipam/">What is IPAM?</a> in
the <em>Amazon VPC IPAM User Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Ipv6CidrBlockAssociation = list(
        AssociationId = "string",
        Ipv6CidrBlock = "string",
        Ipv6CidrBlockState = list(
          State = "associating"|"associated"|"disassociating"|"disassociated"|"failing"|"failed",
          StatusMessage = "string"
        ),
        NetworkBorderGroup = "string",
        Ipv6Pool = "string"
      ),
      CidrBlockAssociation = list(
        AssociationId = "string",
        CidrBlock = "string",
        CidrBlockState = list(
          State = "associating"|"associated"|"disassociating"|"disassociated"|"failing"|"failed",
          StatusMessage = "string"
        )
      ),
      VpcId = "string"
    )

### Request syntax

    svc$associate_vpc_cidr_block(
      AmazonProvidedIpv6CidrBlock = TRUE|FALSE,
      CidrBlock = "string",
      VpcId = "string",
      Ipv6CidrBlockNetworkBorderGroup = "string",
      Ipv6Pool = "string",
      Ipv6CidrBlock = "string",
      Ipv4IpamPoolId = "string",
      Ipv4NetmaskLength = 123,
      Ipv6IpamPoolId = "string",
      Ipv6NetmaskLength = 123
    )
