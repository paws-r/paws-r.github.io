<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_disable_vpc_classic_link</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disables ClassicLink for a VPC

### Description

Disables ClassicLink for a VPC. You cannot disable ClassicLink for a VPC
that has EC2-Classic instances linked to it.

We are retiring EC2-Classic. We recommend that you migrate from
EC2-Classic to a VPC. For more information, see [Migrate from
EC2-Classic to a
VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_disable_vpc_classic_link(DryRun, VpcId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_disable_vpc_classic_link_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_disable_vpc_classic_link_:_VpcId">VpcId</code></td>
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

    svc$disable_vpc_classic_link(
      DryRun = TRUE|FALSE,
      VpcId = "string"
    )
