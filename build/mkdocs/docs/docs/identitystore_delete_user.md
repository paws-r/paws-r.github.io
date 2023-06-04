<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>identitystore_delete_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a user within an identity store given UserId

### Description

Deletes a user within an identity store given `UserId`.

### Usage

    identitystore_delete_user(IdentityStoreId, UserId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="identitystore_delete_user_:_IdentityStoreId">IdentityStoreId</code></td>
<td><p>[required] The globally unique identifier for the identity
store.</p></td>
</tr>
<tr class="even">
<td><code id="identitystore_delete_user_:_UserId">UserId</code></td>
<td><p>[required] The identifier for a user in the identity
store.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_user(
      IdentityStoreId = "string",
      UserId = "string"
    )
