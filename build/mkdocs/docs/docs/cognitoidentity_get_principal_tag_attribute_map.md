<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentity_get_principal_tag_attribute_map</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Use GetPrincipalTagAttributeMap to list all mappings between PrincipalTags and user attributes

### Description

Use `get_principal_tag_attribute_map` to list all mappings between
`PrincipalTags` and user attributes.

### Usage

    cognitoidentity_get_principal_tag_attribute_map(IdentityPoolId,
      IdentityProviderName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentity_get_principal_tag_attribute_map_:_IdentityPoolId">IdentityPoolId</code></td>
<td><p>[required] You can use this operation to get the ID of the
Identity Pool you setup attribute mappings for.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentity_get_principal_tag_attribute_map_:_IdentityProviderName">IdentityProviderName</code></td>
<td><p>[required] You can use this operation to get the provider
name.</p></td>
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

    svc$get_principal_tag_attribute_map(
      IdentityPoolId = "string",
      IdentityProviderName = "string"
    )
