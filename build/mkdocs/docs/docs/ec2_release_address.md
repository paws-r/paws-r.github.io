<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_release_address</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Releases the specified Elastic IP address

### Description

Releases the specified Elastic IP address.

\[EC2-Classic, default VPC\] Releasing an Elastic IP address
automatically disassociates it from any instance that it's associated
with. To disassociate an Elastic IP address without releasing it, use
`disassociate_address`.

We are retiring EC2-Classic. We recommend that you migrate from
EC2-Classic to a VPC. For more information, see [Migrate from
EC2-Classic to a
VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html)
in the *Amazon Elastic Compute Cloud User Guide*.

\[Nondefault VPC\] You must use `disassociate_address` to disassociate
the Elastic IP address before you can release it. Otherwise, Amazon EC2
returns an error (`InvalidIPAddress.InUse`).

After releasing an Elastic IP address, it is released to the IP address
pool. Be sure to update your DNS records and any servers or devices that
communicate with the address. If you attempt to release an Elastic IP
address that you already released, you'll get an `AuthFailure` error if
the address is already allocated to another Amazon Web Services account.

\[EC2-VPC\] After you release an Elastic IP address for use in a VPC,
you might be able to recover it. For more information, see
`allocate_address`.

For more information, see [Elastic IP
Addresses](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_release_address(AllocationId, PublicIp, NetworkBorderGroup, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_release_address_:_AllocationId">AllocationId</code></td>
<td><p>[EC2-VPC] The allocation ID. Required for EC2-VPC.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_release_address_:_PublicIp">PublicIp</code></td>
<td><p>[EC2-Classic] The Elastic IP address. Required for
EC2-Classic.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_release_address_:_NetworkBorderGroup">NetworkBorderGroup</code></td>
<td><p>The set of Availability Zones, Local Zones, or Wavelength Zones
from which Amazon Web Services advertises IP addresses.</p>
<p>If you provide an incorrect network border group, you receive an
<code>InvalidAddress.NotFound</code> error.</p>
<p>You cannot use a network border group with EC2 Classic. If you
attempt this operation on EC2 classic, you receive an
<code>InvalidParameterCombination</code> error.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_release_address_:_DryRun">DryRun</code></td>
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

    svc$release_address(
      AllocationId = "string",
      PublicIp = "string",
      NetworkBorderGroup = "string",
      DryRun = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example releases an Elastic IP address for use with instances in a
    # VPC.
    svc$release_address(
      AllocationId = "eipalloc-64d5890a"
    )

    # This example releases an Elastic IP address for use with instances in
    # EC2-Classic.
    svc$release_address(
      PublicIp = "198.51.100.0"
    )

    ## End(Not run)
