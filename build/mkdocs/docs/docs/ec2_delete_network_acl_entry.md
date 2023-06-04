<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_network_acl_entry</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified ingress or egress entry (rule) from the specified network ACL

### Description

Deletes the specified ingress or egress entry (rule) from the specified
network ACL.

### Usage

    ec2_delete_network_acl_entry(DryRun, Egress, NetworkAclId, RuleNumber)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_delete_network_acl_entry_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_delete_network_acl_entry_:_Egress">Egress</code></td>
<td><p>[required] Indicates whether the rule is an egress rule.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_delete_network_acl_entry_:_NetworkAclId">NetworkAclId</code></td>
<td><p>[required] The ID of the network ACL.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_delete_network_acl_entry_:_RuleNumber">RuleNumber</code></td>
<td><p>[required] The rule number of the entry to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_network_acl_entry(
      DryRun = TRUE|FALSE,
      Egress = TRUE|FALSE,
      NetworkAclId = "string",
      RuleNumber = 123
    )

### Examples

    ## Not run: 
    # This example deletes ingress rule number 100 from the specified network
    # ACL.
    svc$delete_network_acl_entry(
      Egress = TRUE,
      NetworkAclId = "acl-5fb85d36",
      RuleNumber = 100L
    )

    ## End(Not run)
