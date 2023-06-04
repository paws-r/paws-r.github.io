<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>identitystore_create_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a group within the specified identity store

### Description

Creates a group within the specified identity store.

### Usage

    identitystore_create_group(IdentityStoreId, DisplayName, Description)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="identitystore_create_group_:_IdentityStoreId">IdentityStoreId</code></td>
<td><p>[required] The globally unique identifier for the identity
store.</p></td>
</tr>
<tr class="even">
<td><code
id="identitystore_create_group_:_DisplayName">DisplayName</code></td>
<td><p>A string containing the name of the group. This value is commonly
displayed when the group is referenced. "Administrator" and
"AWSAdministrators" are reserved names and can't be used for users or
groups.</p></td>
</tr>
<tr class="odd">
<td><code
id="identitystore_create_group_:_Description">Description</code></td>
<td><p>A string containing the description of the group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GroupId = "string",
      IdentityStoreId = "string"
    )

### Request syntax

    svc$create_group(
      IdentityStoreId = "string",
      DisplayName = "string",
      Description = "string"
    )
