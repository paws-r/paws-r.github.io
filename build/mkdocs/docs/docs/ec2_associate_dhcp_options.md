<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_associate_dhcp_options</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates a set of DHCP options (that you've previously created) with the specified VPC, or associates no DHCP options with the VPC

### Description

Associates a set of DHCP options (that you've previously created) with
the specified VPC, or associates no DHCP options with the VPC.

After you associate the options with the VPC, any existing instances and
all new instances that you launch in that VPC use the options. You don't
need to restart or relaunch the instances. They automatically pick up
the changes within a few hours, depending on how frequently the instance
renews its DHCP lease. You can explicitly renew the lease using the
operating system on the instance.

For more information, see [DHCP options
sets](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_DHCP_Options.html)
in the *Amazon Virtual Private Cloud User Guide*.

### Usage

    ec2_associate_dhcp_options(DhcpOptionsId, VpcId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_associate_dhcp_options_:_DhcpOptionsId">DhcpOptionsId</code></td>
<td><p>[required] The ID of the DHCP options set, or
<code>default</code> to associate no DHCP options with the VPC.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_associate_dhcp_options_:_VpcId">VpcId</code></td>
<td><p>[required] The ID of the VPC.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_associate_dhcp_options_:_DryRun">DryRun</code></td>
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

    svc$associate_dhcp_options(
      DhcpOptionsId = "string",
      VpcId = "string",
      DryRun = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example associates the specified DHCP options set with the
    # specified VPC.
    svc$associate_dhcp_options(
      DhcpOptionsId = "dopt-d9070ebb",
      VpcId = "vpc-a01106c2"
    )

    # This example associates the default DHCP options set with the specified
    # VPC.
    svc$associate_dhcp_options(
      DhcpOptionsId = "default",
      VpcId = "vpc-a01106c2"
    )

    ## End(Not run)
