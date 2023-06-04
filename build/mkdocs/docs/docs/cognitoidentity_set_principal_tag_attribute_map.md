<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentity_set_principal_tag_attribute_map</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## You can use this operation to use default (username and clientID) attribute or custom attribute mappings

### Description

You can use this operation to use default (username and clientID)
attribute or custom attribute mappings.

### Usage

    cognitoidentity_set_principal_tag_attribute_map(IdentityPoolId,
      IdentityProviderName, UseDefaults, PrincipalTags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentity_set_principal_tag_attribute_map_:_IdentityPoolId">IdentityPoolId</code></td>
<td><p>[required] The ID of the Identity Pool you want to set attribute
mappings for.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentity_set_principal_tag_attribute_map_:_IdentityProviderName">IdentityProviderName</code></td>
<td><p>[required] The provider name you want to use for attribute
mappings.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentity_set_principal_tag_attribute_map_:_UseDefaults">UseDefaults</code></td>
<td><p>You can use this operation to use default (username and clientID)
attribute mappings.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentity_set_principal_tag_attribute_map_:_PrincipalTags">PrincipalTags</code></td>
<td><p>You can use this operation to add principal tags.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IdentityPoolId = "string",
      IdentityProviderName = "string",
      UseDefaults = TRUE|FALSE,
      PrincipalTags = list(
        "string"
      )
    )

### Request syntax

    svc$set_principal_tag_attribute_map(
      IdentityPoolId = "string",
      IdentityProviderName = "string",
      UseDefaults = TRUE|FALSE,
      PrincipalTags = list(
        "string"
      )
    )
