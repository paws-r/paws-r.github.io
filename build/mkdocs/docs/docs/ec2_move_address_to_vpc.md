<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_move_address_to_vpc</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Moves an Elastic IP address from the EC2-Classic platform to the EC2-VPC platform

### Description

Moves an Elastic IP address from the EC2-Classic platform to the EC2-VPC
platform. The Elastic IP address must be allocated to your account for
more than 24 hours, and it must not be associated with an instance.
After the Elastic IP address is moved, it is no longer available for use
in the EC2-Classic platform, unless you move it back using the
`restore_address_to_classic` request. You cannot move an Elastic IP
address that was originally allocated for use in the EC2-VPC platform to
the EC2-Classic platform.

We are retiring EC2-Classic. We recommend that you migrate from
EC2-Classic to a VPC. For more information, see [Migrate from
EC2-Classic to a
VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_move_address_to_vpc(DryRun, PublicIp)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_move_address_to_vpc_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_move_address_to_vpc_:_PublicIp">PublicIp</code></td>
<td><p>[required] The Elastic IP address.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AllocationId = "string",
      Status = "MoveInProgress"|"InVpc"|"InClassic"
    )

### Request syntax

    svc$move_address_to_vpc(
      DryRun = TRUE|FALSE,
      PublicIp = "string"
    )

### Examples

    ## Not run: 
    # This example moves the specified Elastic IP address to the EC2-VPC
    # platform.
    svc$move_address_to_vpc(
      PublicIp = "54.123.4.56"
    )

    ## End(Not run)
