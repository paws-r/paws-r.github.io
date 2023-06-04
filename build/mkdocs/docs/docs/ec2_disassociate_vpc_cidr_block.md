<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_disassociate_vpc_cidr_block</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates a CIDR block from a VPC

### Description

Disassociates a CIDR block from a VPC. To disassociate the CIDR block,
you must specify its association ID. You can get the association ID by
using `describe_vpcs`. You must detach or delete all gateways and
resources that are associated with the CIDR block before you can
disassociate it.

You cannot disassociate the CIDR block with which you originally created
the VPC (the primary CIDR block).

### Usage

    ec2_disassociate_vpc_cidr_block(AssociationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_disassociate_vpc_cidr_block_:_AssociationId">AssociationId</code></td>
<td><p>[required] The association ID for the CIDR block.</p></td>
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

    svc$disassociate_vpc_cidr_block(
      AssociationId = "string"
    )
