<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_admin_link_provider_for_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Links an existing user account in a user pool (DestinationUser) to an identity from an external IdP (SourceUser) based on a specified attribute name and value from the external IdP

### Description

Links an existing user account in a user pool (`DestinationUser`) to an
identity from an external IdP (`SourceUser`) based on a specified
attribute name and value from the external IdP. This allows you to
create a link from the existing user account to an external federated
user identity that has not yet been used to sign in. You can then use
the federated user identity to sign in as the existing user account.

For example, if there is an existing user with a username and password,
this API links that user to a federated user identity. When the user
signs in with a federated user identity, they sign in as the existing
user account.

The maximum number of federated identities linked to a user is five.

Because this API allows a user with an external federated identity to
sign in as an existing user in the user pool, it is critical that it
only be used with external IdPs and provider attributes that have been
trusted by the application owner.

This action is administrative and requires developer credentials.

### Usage

    cognitoidentityprovider_admin_link_provider_for_user(UserPoolId,
      DestinationUser, SourceUser)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_link_provider_for_user_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID for the user pool.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_admin_link_provider_for_user_:_DestinationUser">DestinationUser</code></td>
<td><p>[required] The existing user in the user pool that you want to
assign to the external IdP user account. This user can be a native
(Username + Password) Amazon Cognito user pools user or a federated user
(for example, a SAML or Facebook user). If the user doesn't exist,
Amazon Cognito generates an exception. Amazon Cognito returns this user
when the new user (with the linked IdP attribute) signs in.</p>
<p>For a native username + password user, the
<code>ProviderAttributeValue</code> for the <code>DestinationUser</code>
should be the username in the user pool. For a federated user, it should
be the provider-specific <code>user_id</code>.</p>
<p>The <code>ProviderAttributeName</code> of the
<code>DestinationUser</code> is ignored.</p>
<p>The <code>ProviderName</code> should be set to <code>Cognito</code>
for users in Cognito user pools.</p>
<p>All attributes in the DestinationUser profile must be mutable. If you
have assigned the user any immutable custom attributes, the operation
won't succeed.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_link_provider_for_user_:_SourceUser">SourceUser</code></td>
<td><p>[required] An external IdP account for a user who doesn't exist
yet in the user pool. This user must be a federated user (for example, a
SAML or Facebook user), not another native user.</p>
<p>If the <code>SourceUser</code> is using a federated social IdP, such
as Facebook, Google, or Login with Amazon, you must set the
<code>ProviderAttributeName</code> to <code>Cognito_Subject</code>. For
social IdPs, the <code>ProviderName</code> will be
<code>Facebook</code>, <code>Google</code>, or
<code>LoginWithAmazon</code>, and Amazon Cognito will automatically
parse the Facebook, Google, and Login with Amazon tokens for
<code>id</code>, <code>sub</code>, and <code>user_id</code>,
respectively. The <code>ProviderAttributeValue</code> for the user must
be the same value as the <code>id</code>, <code>sub</code>, or
<code>user_id</code> value found in the social IdP token.</p>
<p>For SAML, the <code>ProviderAttributeName</code> can be any value
that matches a claim in the SAML assertion. If you want to link SAML
users based on the subject of the SAML assertion, you should map the
subject to a claim through the SAML IdP and submit that claim name as
the <code>ProviderAttributeName</code>. If you set
<code>ProviderAttributeName</code> to <code>Cognito_Subject</code>,
Amazon Cognito will automatically parse the default unique identifier
found in the subject from the SAML token.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$admin_link_provider_for_user(
      UserPoolId = "string",
      DestinationUser = list(
        ProviderName = "string",
        ProviderAttributeName = "string",
        ProviderAttributeValue = "string"
      ),
      SourceUser = list(
        ProviderName = "string",
        ProviderAttributeName = "string",
        ProviderAttributeValue = "string"
      )
    )
