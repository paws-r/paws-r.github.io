<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_default_vpc</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a default VPC with a size /16 IPv4 CIDR block and a default subnet in each Availability Zone

### Description

Creates a default VPC with a size `⁠/16⁠` IPv4 CIDR block and a default
subnet in each Availability Zone. For more information about the
components of a default VPC, see [Default VPC and default
subnets](https://docs.aws.amazon.com/vpc/latest/userguide/default-vpc.html)
in the *Amazon Virtual Private Cloud User Guide*. You cannot specify the
components of the default VPC yourself.

If you deleted your previous default VPC, you can create a default VPC.
You cannot have more than one default VPC per Region.

If your account supports EC2-Classic, you cannot use this action to
create a default VPC in a Region that supports EC2-Classic. If you want
a default VPC in a Region that supports EC2-Classic, see "I really want
a default VPC for my existing EC2 account. Is that possible?" in the
[Default VPCs FAQ](https://aws.amazon.com/vpc/faqs/#Default_VPCs).

We are retiring EC2-Classic. We recommend that you migrate from
EC2-Classic to a VPC. For more information, see [Migrate from
EC2-Classic to a
VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_create_default_vpc(DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_create_default_vpc_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Vpc = list(
        CidrBlock = "string",
        DhcpOptionsId = "string",
        State = "pending"|"available",
        VpcId = "string",
        OwnerId = "string",
        InstanceTenancy = "default"|"dedicated"|"host",
        Ipv6CidrBlockAssociationSet = list(
          list(
            AssociationId = "string",
            Ipv6CidrBlock = "string",
            Ipv6CidrBlockState = list(
              State = "associating"|"associated"|"disassociating"|"disassociated"|"failing"|"failed",
              StatusMessage = "string"
            ),
            NetworkBorderGroup = "string",
            Ipv6Pool = "string"
          )
        ),
        CidrBlockAssociationSet = list(
          list(
            AssociationId = "string",
            CidrBlock = "string",
            CidrBlockState = list(
              State = "associating"|"associated"|"disassociating"|"disassociated"|"failing"|"failed",
              StatusMessage = "string"
            )
          )
        ),
        IsDefault = TRUE|FALSE,
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$create_default_vpc(
      DryRun = TRUE|FALSE
    )
