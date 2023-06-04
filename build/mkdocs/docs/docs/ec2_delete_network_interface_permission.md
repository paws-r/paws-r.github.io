<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_network_interface_permission</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a permission for a network interface

### Description

Deletes a permission for a network interface. By default, you cannot
delete the permission if the account for which you're removing the
permission has attached the network interface to an instance. However,
you can force delete the permission, regardless of any attachment.

### Usage

    ec2_delete_network_interface_permission(NetworkInterfacePermissionId,
      Force, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_delete_network_interface_permission_:_NetworkInterfacePermissionId">NetworkInterfacePermissionId</code></td>
<td><p>[required] The ID of the network interface permission.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_delete_network_interface_permission_:_Force">Force</code></td>
<td><p>Specify <code>true</code> to remove the permission even if the
network interface is attached to an instance.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_delete_network_interface_permission_:_DryRun">DryRun</code></td>
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
      Return = TRUE|FALSE
    )

### Request syntax

    svc$delete_network_interface_permission(
      NetworkInterfacePermissionId = "string",
      Force = TRUE|FALSE,
      DryRun = TRUE|FALSE
    )
