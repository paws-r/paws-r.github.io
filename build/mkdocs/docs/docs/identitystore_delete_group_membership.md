<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>identitystore_delete_group_membership</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete a membership within a group given MembershipId

### Description

Delete a membership within a group given `MembershipId`.

### Usage

    identitystore_delete_group_membership(IdentityStoreId, MembershipId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="identitystore_delete_group_membership_:_IdentityStoreId">IdentityStoreId</code></td>
<td><p>[required] The globally unique identifier for the identity
store.</p></td>
</tr>
<tr class="even">
<td><code
id="identitystore_delete_group_membership_:_MembershipId">MembershipId</code></td>
<td><p>[required] The identifier for a <code>GroupMembership</code> in
an identity store.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_group_membership(
      IdentityStoreId = "string",
      MembershipId = "string"
    )
