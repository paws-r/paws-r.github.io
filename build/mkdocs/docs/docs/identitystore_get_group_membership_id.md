<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>identitystore_get_group_membership_id</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the MembershipId in an identity store

### Description

Retrieves the `MembershipId` in an identity store.

### Usage

    identitystore_get_group_membership_id(IdentityStoreId, GroupId,
      MemberId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="identitystore_get_group_membership_id_:_IdentityStoreId">IdentityStoreId</code></td>
<td><p>[required] The globally unique identifier for the identity
store.</p></td>
</tr>
<tr class="even">
<td><code
id="identitystore_get_group_membership_id_:_GroupId">GroupId</code></td>
<td><p>[required] The identifier for a group in the identity
store.</p></td>
</tr>
<tr class="odd">
<td><code
id="identitystore_get_group_membership_id_:_MemberId">MemberId</code></td>
<td><p>[required] An object that contains the identifier of a group
member. Setting the <code>UserID</code> field to the specific identifier
for a user indicates that the user is a member of the group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MembershipId = "string",
      IdentityStoreId = "string"
    )

### Request syntax

    svc$get_group_membership_id(
      IdentityStoreId = "string",
      GroupId = "string",
      MemberId = list(
        UserId = "string"
      )
    )
