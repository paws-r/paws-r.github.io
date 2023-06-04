<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_admin_disable_provider_for_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Prevents the user from signing in with the specified external (SAML or social) identity provider (IdP)

### Description

Prevents the user from signing in with the specified external (SAML or
social) identity provider (IdP). If the user that you want to deactivate
is a Amazon Cognito user pools native username + password user, they
can't use their password to sign in. If the user to deactivate is a
linked external IdP user, any link between that user and an existing
user is removed. When the external user signs in again, and the user is
no longer attached to the previously linked `DestinationUser`, the user
must create a new user account. See `admin_link_provider_for_user`.

This action is enabled only for admin access and requires developer
credentials.

The `ProviderName` must match the value specified when creating an IdP
for the pool.

To deactivate a native username + password user, the `ProviderName`
value must be `Cognito` and the `ProviderAttributeName` must be
`Cognito_Subject`. The `ProviderAttributeValue` must be the name that is
used in the user pool for the user.

The `ProviderAttributeName` must always be `Cognito_Subject` for social
IdPs. The `ProviderAttributeValue` must always be the exact subject that
was used when the user was originally linked as a source user.

For de-linking a SAML identity, there are two scenarios. If the linked
identity has not yet been used to sign in, the `ProviderAttributeName`
and `ProviderAttributeValue` must be the same values that were used for
the `SourceUser` when the identities were originally linked using
`admin_link_provider_for_user` call. (If the linking was done with
`ProviderAttributeName` set to `Cognito_Subject`, the same applies
here). However, if the user has already signed in, the
`ProviderAttributeName` must be `Cognito_Subject` and
`ProviderAttributeValue` must be the subject of the SAML assertion.

### Usage

    cognitoidentityprovider_admin_disable_provider_for_user(UserPoolId,
      User)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_disable_provider_for_user_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID for the user pool.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_admin_disable_provider_for_user_:_User">User</code></td>
<td><p>[required] The user to be disabled.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$admin_disable_provider_for_user(
      UserPoolId = "string",
      User = list(
        ProviderName = "string",
        ProviderAttributeName = "string",
        ProviderAttributeValue = "string"
      )
    )
