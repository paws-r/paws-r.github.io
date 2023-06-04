<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>identitystore_create_group_membership</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a relationship between a member and a group

### Description

Creates a relationship between a member and a group. The following
identifiers must be specified: `GroupId`, `IdentityStoreId`, and
`MemberId`.

### Usage

    identitystore_create_group_membership(IdentityStoreId, GroupId,
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
id="identitystore_create_group_membership_:_IdentityStoreId">IdentityStoreId</code></td>
<td><p>[required] The globally unique identifier for the identity
store.</p></td>
</tr>
<tr class="even">
<td><code
id="identitystore_create_group_membership_:_GroupId">GroupId</code></td>
<td><p>[required] The identifier for a group in the identity
store.</p></td>
</tr>
<tr class="odd">
<td><code
id="identitystore_create_group_membership_:_MemberId">MemberId</code></td>
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

    svc$create_group_membership(
      IdentityStoreId = "string",
      GroupId = "string",
      MemberId = list(
        UserId = "string"
      )
    )
