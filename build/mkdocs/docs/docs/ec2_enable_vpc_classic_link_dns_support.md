<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_enable_vpc_classic_link_dns_support</td>
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

Enables a VPC to support DNS hostname resolution for ClassicLink. If
enabled, the DNS hostname of a linked EC2-Classic instance resolves to
its private IP address when addressed from an instance in the VPC to
which it's linked. Similarly, the DNS hostname of an instance in a VPC
resolves to its private IP address when addressed from a linked
EC2-Classic instance. For more information, see
[ClassicLink](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html)
in the *Amazon Elastic Compute Cloud User Guide*.

You must specify a VPC ID in the request.

### Usage

    ec2_enable_vpc_classic_link_dns_support(VpcId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_enable_vpc_classic_link_dns_support_:_VpcId">VpcId</code></td>
<td><p>The ID of the VPC.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Return = TRUE|FALSE
    )

### Request syntax

    svc$enable_vpc_classic_link_dns_support(
      VpcId = "string"
    )
