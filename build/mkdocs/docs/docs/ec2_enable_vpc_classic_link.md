<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_enable_vpc_classic_link</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## We are retiring EC2-Classic

### Description

We are retiring EC2-Classic. We recommend that you migrate from
EC2-Classic to a VPC. For more information, see [Migrate from
EC2-Classic to a
VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html)
in the *Amazon Elastic Compute Cloud User Guide*.

Enables a VPC for ClassicLink. You can then link EC2-Classic instances
to your ClassicLink-enabled VPC to allow communication over private IP
addresses. You cannot enable your VPC for ClassicLink if any of your VPC
route tables have existing routes for address ranges within the
`⁠10.0.0.0/8⁠` IP address range, excluding local routes for VPCs in the
`⁠10.0.0.0/16⁠` and `⁠10.1.0.0/16⁠` IP address ranges. For more information,
see
[ClassicLink](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_enable_vpc_classic_link(DryRun, VpcId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_enable_vpc_classic_link_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_enable_vpc_classic_link_:_VpcId">VpcId</code></td>
<td><p>[required] The ID of the VPC.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Return = TRUE|FALSE
    )

### Request syntax

    svc$enable_vpc_classic_link(
      DryRun = TRUE|FALSE,
      VpcId = "string"
    )
