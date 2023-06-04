<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_disassociate_address</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates an Elastic IP address from the instance or network interface it's associated with

### Description

Disassociates an Elastic IP address from the instance or network
interface it's associated with.

An Elastic IP address is for use in either the EC2-Classic platform or
in a VPC. For more information, see [Elastic IP
Addresses](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html)
in the *Amazon Elastic Compute Cloud User Guide*.

We are retiring EC2-Classic. We recommend that you migrate from
EC2-Classic to a VPC. For more information, see [Migrate from
EC2-Classic to a
VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html)
in the *Amazon Elastic Compute Cloud User Guide*.

This is an idempotent operation. If you perform the operation more than
once, Amazon EC2 doesn't return an error.

### Usage

    ec2_disassociate_address(AssociationId, PublicIp, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_disassociate_address_:_AssociationId">AssociationId</code></td>
<td><p>[EC2-VPC] The association ID. Required for EC2-VPC.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_disassociate_address_:_PublicIp">PublicIp</code></td>
<td><p>[EC2-Classic] The Elastic IP address. Required for
EC2-Classic.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_disassociate_address_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disassociate_address(
      AssociationId = "string",
      PublicIp = "string",
      DryRun = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example disassociates an Elastic IP address from an instance in a
    # VPC.
    svc$disassociate_address(
      AssociationId = "eipassoc-2bebb745"
    )

    # This example disassociates an Elastic IP address from an instance in
    # EC2-Classic.
    svc$disassociate_address(
      PublicIp = "198.51.100.0"
    )

    ## End(Not run)
