<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_vpc_attribute</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the specified attribute of the specified VPC

### Description

Modifies the specified attribute of the specified VPC.

### Usage

    ec2_modify_vpc_attribute(EnableDnsHostnames, EnableDnsSupport, VpcId,
      EnableNetworkAddressUsageMetrics)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_modify_vpc_attribute_:_EnableDnsHostnames">EnableDnsHostnames</code></td>
<td><p>Indicates whether the instances launched in the VPC get DNS
hostnames. If enabled, instances in the VPC get DNS hostnames;
otherwise, they do not.</p>
<p>You cannot modify the DNS resolution and DNS hostnames attributes in
the same request. Use separate requests for each attribute. You can only
enable DNS hostnames if you've enabled DNS support.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_vpc_attribute_:_EnableDnsSupport">EnableDnsSupport</code></td>
<td><p>Indicates whether the DNS resolution is supported for the VPC. If
enabled, queries to the Amazon provided DNS server at the
169.254.169.253 IP address, or the reserved IP address at the base of
the VPC network range "plus two" succeed. If disabled, the Amazon
provided DNS service in the VPC that resolves public DNS hostnames to IP
addresses is not enabled.</p>
<p>You cannot modify the DNS resolution and DNS hostnames attributes in
the same request. Use separate requests for each attribute.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_modify_vpc_attribute_:_VpcId">VpcId</code></td>
<td><p>[required] The ID of the VPC.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_vpc_attribute_:_EnableNetworkAddressUsageMetrics">EnableNetworkAddressUsageMetrics</code></td>
<td><p>Indicates whether Network Address Usage metrics are enabled for
your VPC.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$modify_vpc_attribute(
      EnableDnsHostnames = list(
        Value = TRUE|FALSE
      ),
      EnableDnsSupport = list(
        Value = TRUE|FALSE
      ),
      VpcId = "string",
      EnableNetworkAddressUsageMetrics = list(
        Value = TRUE|FALSE
      )
    )

### Examples

    ## Not run: 
    # This example modifies the enableDnsSupport attribute. This attribute
    # indicates whether DNS resolution is enabled for the VPC. If this
    # attribute is true, the Amazon DNS server resolves DNS hostnames for
    # instances in the VPC to their corresponding IP addresses; otherwise, it
    # does not.
    svc$modify_vpc_attribute(
      EnableDnsSupport = list(
        Value = FALSE
      ),
      VpcId = "vpc-a01106c2"
    )

    # This example modifies the enableDnsHostnames attribute. This attribute
    # indicates whether instances launched in the VPC get DNS hostnames. If
    # this attribute is true, instances in the VPC get DNS hostnames;
    # otherwise, they do not.
    svc$modify_vpc_attribute(
      EnableDnsHostnames = list(
        Value = FALSE
      ),
      VpcId = "vpc-a01106c2"
    )

    ## End(Not run)
