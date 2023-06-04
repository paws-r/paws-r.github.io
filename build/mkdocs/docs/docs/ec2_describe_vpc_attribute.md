<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_vpc_attribute</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified attribute of the specified VPC

### Description

Describes the specified attribute of the specified VPC. You can specify
only one attribute at a time.

### Usage

    ec2_describe_vpc_attribute(Attribute, VpcId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_vpc_attribute_:_Attribute">Attribute</code></td>
<td><p>[required] The VPC attribute.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_describe_vpc_attribute_:_VpcId">VpcId</code></td>
<td><p>[required] The ID of the VPC.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_describe_vpc_attribute_:_DryRun">DryRun</code></td>
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
      VpcId = "string",
      EnableDnsHostnames = list(
        Value = TRUE|FALSE
      ),
      EnableDnsSupport = list(
        Value = TRUE|FALSE
      ),
      EnableNetworkAddressUsageMetrics = list(
        Value = TRUE|FALSE
      )
    )

### Request syntax

    svc$describe_vpc_attribute(
      Attribute = "enableDnsSupport"|"enableDnsHostnames"|"enableNetworkAddressUsageMetrics",
      VpcId = "string",
      DryRun = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example describes the enableDnsSupport attribute. This attribute
    # indicates whether DNS resolution is enabled for the VPC. If this
    # attribute is true, the Amazon DNS server resolves DNS hostnames for your
    # instances to their corresponding IP addresses; otherwise, it does not.
    svc$describe_vpc_attribute(
      Attribute = "enableDnsSupport",
      VpcId = "vpc-a01106c2"
    )

    # This example describes the enableDnsHostnames attribute. This attribute
    # indicates whether the instances launched in the VPC get DNS hostnames.
    # If this attribute is true, instances in the VPC get DNS hostnames;
    # otherwise, they do not.
    svc$describe_vpc_attribute(
      Attribute = "enableDnsHostnames",
      VpcId = "vpc-a01106c2"
    )

    ## End(Not run)
