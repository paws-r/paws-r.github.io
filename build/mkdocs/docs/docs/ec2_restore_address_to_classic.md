<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_restore_address_to_classic</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Restores an Elastic IP address that was previously moved to the EC2-VPC platform back to the EC2-Classic platform

### Description

Restores an Elastic IP address that was previously moved to the EC2-VPC
platform back to the EC2-Classic platform. You cannot move an Elastic IP
address that was originally allocated for use in EC2-VPC. The Elastic IP
address must not be associated with an instance or network interface.

We are retiring EC2-Classic. We recommend that you migrate from
EC2-Classic to a VPC. For more information, see [Migrate from
EC2-Classic to a
VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_restore_address_to_classic(DryRun, PublicIp)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_restore_address_to_classic_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_restore_address_to_classic_:_PublicIp">PublicIp</code></td>
<td><p>[required] The Elastic IP address.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PublicIp = "string",
      Status = "MoveInProgress"|"InVpc"|"InClassic"
    )

### Request syntax

    svc$restore_address_to_classic(
      DryRun = TRUE|FALSE,
      PublicIp = "string"
    )

### Examples

    ## Not run: 
    # This example restores the specified Elastic IP address to the
    # EC2-Classic platform.
    svc$restore_address_to_classic(
      PublicIp = "198.51.100.0"
    )

    ## End(Not run)
