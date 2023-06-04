<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>organizations_delete_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified policy from your organization

### Description

Deletes the specified policy from your organization. Before you perform
this operation, you must first detach the policy from all organizational
units (OUs), roots, and accounts.

This operation can be called only from the organization's management
account.

### Usage

    organizations_delete_policy(PolicyId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="organizations_delete_policy_:_PolicyId">PolicyId</code></td>
<td><p>[required] The unique identifier (ID) of the policy that you want
to delete. You can get the ID from the <code>list_policies</code> or
<code>list_policies_for_target</code> operations.</p>
<p>The <a href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>
for a policy ID string requires "p-" followed by from 8 to 128 lowercase
or uppercase letters, digits, or the underscore character (_).</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_policy(
      PolicyId = "string"
    )

### Examples

    ## Not run: 
    # The following example shows how to delete a policy from an organization.
    # The example assumes that you previously detached the policy from all
    # entities:
    # 
    # 
    svc$delete_policy(
      PolicyId = "p-examplepolicyid111"
    )

    ## End(Not run)
