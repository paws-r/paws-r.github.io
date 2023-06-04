<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>identitystore_describe_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the group metadata and attributes from GroupId in an identity store

### Description

Retrieves the group metadata and attributes from `GroupId` in an
identity store.

### Usage

    identitystore_describe_group(IdentityStoreId, GroupId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="identitystore_describe_group_:_IdentityStoreId">IdentityStoreId</code></td>
<td><p>[required] The globally unique identifier for the identity store,
such as <code>d-1234567890</code>. In this example, <code
style="white-space: pre;">⁠d-⁠</code> is a fixed prefix, and
<code>1234567890</code> is a randomly generated string that contains
numbers and lower case letters. This value is generated at the time that
a new identity store is created.</p></td>
</tr>
<tr class="even">
<td><code
id="identitystore_describe_group_:_GroupId">GroupId</code></td>
<td><p>[required] The identifier for a group in the identity
store.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GroupId = "string",
      DisplayName = "string",
      ExternalIds = list(
        list(
          Issuer = "string",
          Id = "string"
        )
      ),
      Description = "string",
      IdentityStoreId = "string"
    )

### Request syntax

    svc$describe_group(
      IdentityStoreId = "string",
      GroupId = "string"
    )
