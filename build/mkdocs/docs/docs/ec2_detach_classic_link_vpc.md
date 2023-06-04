<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_detach_classic_link_vpc</td>
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

Unlinks (detaches) a linked EC2-Classic instance from a VPC. After the
instance has been unlinked, the VPC security groups are no longer
associated with it. An instance is automatically unlinked from a VPC
when it's stopped.

### Usage

    ec2_detach_classic_link_vpc(DryRun, InstanceId, VpcId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_detach_classic_link_vpc_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_detach_classic_link_vpc_:_InstanceId">InstanceId</code></td>
<td><p>[required] The ID of the instance to unlink from the
VPC.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_detach_classic_link_vpc_:_VpcId">VpcId</code></td>
<td><p>[required] The ID of the VPC to which the instance is
linked.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Return = TRUE|FALSE
    )

### Request syntax

    svc$detach_classic_link_vpc(
      DryRun = TRUE|FALSE,
      InstanceId = "string",
      VpcId = "string"
    )
