<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>identitystore_delete_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete a group within an identity store given GroupId

### Description

Delete a group within an identity store given `GroupId`.

### Usage

    identitystore_delete_group(IdentityStoreId, GroupId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="identitystore_delete_group_:_IdentityStoreId">IdentityStoreId</code></td>
<td><p>[required] The globally unique identifier for the identity
store.</p></td>
</tr>
<tr class="even">
<td><code id="identitystore_delete_group_:_GroupId">GroupId</code></td>
<td><p>[required] The identifier for a group in the identity
store.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_group(
      IdentityStoreId = "string",
      GroupId = "string"
    )
