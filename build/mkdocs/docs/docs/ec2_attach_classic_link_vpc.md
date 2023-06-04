<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_attach_classic_link_vpc</td>
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

Links an EC2-Classic instance to a ClassicLink-enabled VPC through one
or more of the VPC's security groups. You cannot link an EC2-Classic
instance to more than one VPC at a time. You can only link an instance
that's in the `running` state. An instance is automatically unlinked
from a VPC when it's stopped - you can link it to the VPC again when you
restart it.

After you've linked an instance, you cannot change the VPC security
groups that are associated with it. To change the security groups, you
must first unlink the instance, and then link it again.

Linking your instance to a VPC is sometimes referred to as *attaching*
your instance.

### Usage

    ec2_attach_classic_link_vpc(DryRun, Groups, InstanceId, VpcId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_attach_classic_link_vpc_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_attach_classic_link_vpc_:_Groups">Groups</code></td>
<td><p>[required] The ID of one or more of the VPC's security groups.
You cannot specify security groups from a different VPC.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_attach_classic_link_vpc_:_InstanceId">InstanceId</code></td>
<td><p>[required] The ID of an EC2-Classic instance to link to the
ClassicLink-enabled VPC.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_attach_classic_link_vpc_:_VpcId">VpcId</code></td>
<td><p>[required] The ID of a ClassicLink-enabled VPC.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Return = TRUE|FALSE
    )

### Request syntax

    svc$attach_classic_link_vpc(
      DryRun = TRUE|FALSE,
      Groups = list(
        "string"
      ),
      InstanceId = "string",
      VpcId = "string"
    )
