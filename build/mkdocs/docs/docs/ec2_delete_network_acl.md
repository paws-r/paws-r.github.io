<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_network_acl</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified network ACL

### Description

Deletes the specified network ACL. You can't delete the ACL if it's
associated with any subnets. You can't delete the default network ACL.

### Usage

    ec2_delete_network_acl(DryRun, NetworkAclId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_delete_network_acl_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_delete_network_acl_:_NetworkAclId">NetworkAclId</code></td>
<td><p>[required] The ID of the network ACL.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_network_acl(
      DryRun = TRUE|FALSE,
      NetworkAclId = "string"
    )

### Examples

    ## Not run: 
    # This example deletes the specified network ACL.
    svc$delete_network_acl(
      NetworkAclId = "acl-5fb85d36"
    )

    ## End(Not run)
