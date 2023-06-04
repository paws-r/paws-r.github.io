<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>identitystore_get_group_id</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves GroupId in an identity store

### Description

Retrieves `GroupId` in an identity store.

### Usage

    identitystore_get_group_id(IdentityStoreId, AlternateIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="identitystore_get_group_id_:_IdentityStoreId">IdentityStoreId</code></td>
<td><p>[required] The globally unique identifier for the identity
store.</p></td>
</tr>
<tr class="even">
<td><code
id="identitystore_get_group_id_:_AlternateIdentifier">AlternateIdentifier</code></td>
<td><p>[required] A unique identifier for a user or group that is not
the primary identifier. This value can be an identifier from an external
identity provider (IdP) that is associated with the user, the group, or
a unique attribute. For the unique attribute, the only valid path is
<code>displayName</code>.</p></td>
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

    svc$get_group_id(
      IdentityStoreId = "string",
      AlternateIdentifier = list(
        ExternalId = list(
          Issuer = "string",
          Id = "string"
        ),
        UniqueAttribute = list(
          AttributePath = "string",
          AttributeValue = list()
        )
      )
    )
