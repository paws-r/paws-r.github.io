<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_dhcp_options</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified set of DHCP options

### Description

Deletes the specified set of DHCP options. You must disassociate the set
of DHCP options before you can delete it. You can disassociate the set
of DHCP options by associating either a new set of options or the
default set of options with the VPC.

### Usage

    ec2_delete_dhcp_options(DhcpOptionsId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_delete_dhcp_options_:_DhcpOptionsId">DhcpOptionsId</code></td>
<td><p>[required] The ID of the DHCP options set.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_delete_dhcp_options_:_DryRun">DryRun</code></td>
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

    svc$delete_dhcp_options(
      DhcpOptionsId = "string",
      DryRun = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example deletes the specified DHCP options set.
    svc$delete_dhcp_options(
      DhcpOptionsId = "dopt-d9070ebb"
    )

    ## End(Not run)
