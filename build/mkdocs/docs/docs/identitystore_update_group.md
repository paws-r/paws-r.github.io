<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>identitystore_update_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## For the specified group in the specified identity store, updates the group metadata and attributes

### Description

For the specified group in the specified identity store, updates the
group metadata and attributes.

### Usage

    identitystore_update_group(IdentityStoreId, GroupId, Operations)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="identitystore_update_group_:_IdentityStoreId">IdentityStoreId</code></td>
<td><p>[required] The globally unique identifier for the identity
store.</p></td>
</tr>
<tr class="even">
<td><code id="identitystore_update_group_:_GroupId">GroupId</code></td>
<td><p>[required] The identifier for a group in the identity
store.</p></td>
</tr>
<tr class="odd">
<td><code
id="identitystore_update_group_:_Operations">Operations</code></td>
<td><p>[required] A list of <code>AttributeOperation</code> objects to
apply to the requested group. These operations might add, replace, or
remove an attribute.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_group(
      IdentityStoreId = "string",
      GroupId = "string",
      Operations = list(
        list(
          AttributePath = "string",
          AttributeValue = list()
        )
      )
    )
