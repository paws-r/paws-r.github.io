<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentity_set_identity_pool_roles</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the roles for an identity pool

### Description

Sets the roles for an identity pool. These roles are used when making
calls to `get_credentials_for_identity` action.

You must use AWS Developer credentials to call this API.

### Usage

    cognitoidentity_set_identity_pool_roles(IdentityPoolId, Roles,
      RoleMappings)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentity_set_identity_pool_roles_:_IdentityPoolId">IdentityPoolId</code></td>
<td><p>[required] An identity pool ID in the format
REGION:GUID.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentity_set_identity_pool_roles_:_Roles">Roles</code></td>
<td><p>[required] The map of roles associated with this pool. For a
given role, the key will be either "authenticated" or "unauthenticated"
and the value will be the Role ARN.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentity_set_identity_pool_roles_:_RoleMappings">RoleMappings</code></td>
<td><p>How users for a specific identity provider are to mapped to
roles. This is a string to RoleMapping object map. The string identifies
the identity provider, for example, "graph.facebook.com" or
"cognito-idp.us-east-1.amazonaws.com/us-east-1_abcdefghi:app_client_id".</p>
<p>Up to 25 rules can be specified per identity provider.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$set_identity_pool_roles(
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
