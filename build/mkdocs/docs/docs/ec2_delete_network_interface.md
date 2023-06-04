<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_network_interface</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified network interface

### Description

Deletes the specified network interface. You must detach the network
interface before you can delete it.

### Usage

    ec2_delete_network_interface(DryRun, NetworkInterfaceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_delete_network_interface_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_delete_network_interface_:_NetworkInterfaceId">NetworkInterfaceId</code></td>
<td><p>[required] The ID of the network interface.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_network_interface(
      DryRun = TRUE|FALSE,
      NetworkInterfaceId = "string"
    )

### Examples

    ## Not run: 
    # This example deletes the specified network interface.
    svc$delete_network_interface(
      NetworkInterfaceId = "eni-e5aa89a3"
    )

    ## End(Not run)
