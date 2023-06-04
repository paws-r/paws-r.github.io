<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_associate_subnet_cidr_block</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates a CIDR block with your subnet

### Description

Associates a CIDR block with your subnet. You can only associate a
single IPv6 CIDR block with your subnet. An IPv6 CIDR block must have a
prefix length of /64.

### Usage

    ec2_associate_subnet_cidr_block(Ipv6CidrBlock, SubnetId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_associate_subnet_cidr_block_:_Ipv6CidrBlock">Ipv6CidrBlock</code></td>
<td><p>[required] The IPv6 CIDR block for your subnet. The subnet must
have a /64 prefix length.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_associate_subnet_cidr_block_:_SubnetId">SubnetId</code></td>
<td><p>[required] The ID of your subnet.</p></td>
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
        )
      ),
      SubnetId = "string"
    )

### Request syntax

    svc$associate_subnet_cidr_block(
      Ipv6CidrBlock = "string",
      SubnetId = "string"
    )
