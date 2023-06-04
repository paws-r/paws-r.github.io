<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_addresses</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified Elastic IP addresses or all of your Elastic IP addresses

### Description

Describes the specified Elastic IP addresses or all of your Elastic IP
addresses.

An Elastic IP address is for use in either the EC2-Classic platform or
in a VPC. For more information, see [Elastic IP
Addresses](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html)
in the *Amazon Elastic Compute Cloud User Guide*.

We are retiring EC2-Classic. We recommend that you migrate from
EC2-Classic to a VPC. For more information, see [Migrate from
EC2-Classic to a
VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_describe_addresses(Filters, PublicIps, AllocationIds, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_describe_addresses_:_Filters">Filters</code></td>
<td><p>One or more filters. Filter names and values are
case-sensitive.</p>
<ul>
<li><p><code>allocation-id</code> - [EC2-VPC] The allocation ID for the
address.</p></li>
<li><p><code>association-id</code> - [EC2-VPC] The association ID for
the address.</p></li>
<li><p><code>domain</code> - Indicates whether the address is for use in
EC2-Classic (<code>standard</code>) or in a VPC
(<code>vpc</code>).</p></li>
<li><p><code>instance-id</code> - The ID of the instance the address is
associated with, if any.</p></li>
<li><p><code>network-border-group</code> - A unique set of Availability
Zones, Local Zones, or Wavelength Zones from where Amazon Web Services
advertises IP addresses.</p></li>
<li><p><code>network-interface-id</code> - [EC2-VPC] The ID of the
network interface that the address is associated with, if any.</p></li>
<li><p><code>network-interface-owner-id</code> - The Amazon Web Services
account ID of the owner.</p></li>
<li><p><code>private-ip-address</code> - [EC2-VPC] The private IP
address associated with the Elastic IP address.</p></li>
<li><p><code>public-ip</code> - The Elastic IP address, or the carrier
IP address.</p></li>
<li><p><code>tag</code>:\&lt;key\&gt; - The key/value combination of a
tag assigned to the resource. Use the tag key in the filter name and the
tag value as the filter value. For example, to find all resources that
have a tag with the key <code>Owner</code> and the value
<code>TeamA</code>, specify <code>tag:Owner</code> for the filter name
and <code>TeamA</code> for the filter value.</p></li>
<li><p><code>tag-key</code> - The key of a tag assigned to the resource.
Use this filter to find all resources assigned a tag with a specific
key, regardless of the tag value.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="ec2_describe_addresses_:_PublicIps">PublicIps</code></td>
<td><p>One or more Elastic IP addresses.</p>
<p>Default: Describes all your Elastic IP addresses.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_addresses_:_AllocationIds">AllocationIds</code></td>
<td><p>[EC2-VPC] Information about the allocation IDs.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_describe_addresses_:_DryRun">DryRun</code></td>
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
      Addresses = list(
        list(
          InstanceId = "string",
          PublicIp = "string",
          AllocationId = "string",
          AssociationId = "string",
          Domain = "vpc"|"standard",
          NetworkInterfaceId = "string",
          NetworkInterfaceOwnerId = "string",
          PrivateIpAddress = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          PublicIpv4Pool = "string",
          NetworkBorderGroup = "string",
          CustomerOwnedIp = "string",
          CustomerOwnedIpv4Pool = "string",
          CarrierIp = "string"
        )
      )
    )

### Request syntax

    svc$describe_addresses(
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      PublicIps = list(
        "string"
      ),
      AllocationIds = list(
        "string"
      ),
      DryRun = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example describes your Elastic IP addresses.
    svc$describe_addresses()

    # This example describes your Elastic IP addresses for use with instances
    # in a VPC.
    svc$describe_addresses(
      Filters = list(
        list(
          Name = "domain",
          Values = list(
            "vpc"
          )
        )
      )
    )

    # This example describes your Elastic IP addresses for use with instances
    # in EC2-Classic.
    svc$describe_addresses(
      Filters = list(
        list(
          Name = "domain",
          Values = list(
            "standard"
          )
        )
      )
    )

    ## End(Not run)
