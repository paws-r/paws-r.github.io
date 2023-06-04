<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentity_get_identity_pool_roles</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the roles for an identity pool

### Description

Gets the roles for an identity pool.

You must use AWS Developer credentials to call this API.

### Usage

    cognitoidentity_get_identity_pool_roles(IdentityPoolId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentity_get_identity_pool_roles_:_IdentityPoolId">IdentityPoolId</code></td>
<td><p>[required] An identity pool ID in the format
REGION:GUID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IdentityPoolId = "string",
      Roles = list(
        "string"
      ),
      RoleMappings = list(
        list(
          Type = "Token"|"Rules",
          AmbiguousRoleResolution = "AuthenticatedRole"|"Deny",
          RulesConfiguration = list(
            Rules = list(
              list(
                Claim = "string",
                MatchType = "Equals"|"Contains"|"StartsWith"|"NotEqual",
                Value = "string",
                RoleARN = "string"
              )
            )
          )
        )
      )
    )

### Request syntax

    svc$get_identity_pool_roles(
      IdentityPoolId = "string"
    )
