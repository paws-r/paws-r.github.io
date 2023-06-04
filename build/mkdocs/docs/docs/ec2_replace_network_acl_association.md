<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_replace_network_acl_association</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Changes which network ACL a subnet is associated with

### Description

Changes which network ACL a subnet is associated with. By default when
you create a subnet, it's automatically associated with the default
network ACL. For more information, see [Network
ACLs](https://docs.aws.amazon.com/vpc/latest/userguide/) in the *Amazon
Virtual Private Cloud User Guide*.

This is an idempotent operation.

### Usage

    ec2_replace_network_acl_association(AssociationId, DryRun, NetworkAclId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_replace_network_acl_association_:_AssociationId">AssociationId</code></td>
<td><p>[required] The ID of the current association between the original
network ACL and the subnet.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_replace_network_acl_association_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_replace_network_acl_association_:_NetworkAclId">NetworkAclId</code></td>
<td><p>[required] The ID of the new network ACL to associate with the
subnet.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NewAssociationId = "string"
    )

### Request syntax

    svc$replace_network_acl_association(
      AssociationId = "string",
      DryRun = TRUE|FALSE,
      NetworkAclId = "string"
    )

### Examples

    ## Not run: 
    # This example associates the specified network ACL with the subnet for
    # the specified network ACL association.
    svc$replace_network_acl_association(
      AssociationId = "aclassoc-e5b95c8c",
      NetworkAclId = "acl-5fb85d36"
    )

    ## End(Not run)
