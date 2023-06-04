<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_get_identity_provider_by_identifier</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the specified IdP

### Description

Gets the specified IdP.

### Usage

    cognitoidentityprovider_get_identity_provider_by_identifier(UserPoolId,
      IdpIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_get_identity_provider_by_identifier_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_get_identity_provider_by_identifier_:_IdpIdentifier">IdpIdentifier</code></td>
<td><p>[required] The IdP identifier.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IdentityProvider = list(
        UserPoolId = "string",
        ProviderName = "string",
        ProviderType = "SAML"|"Facebook"|"Google"|"LoginWithAmazon"|"SignInWithApple"|"OIDC",
        ProviderDetails = list(
          "string"
        ),
        AttributeMapping = list(
          "string"
        ),
        IdpIdentifiers = list(
          "string"
        ),
        LastModifiedDate = as.POSIXct(
          "2015-01-01"
        ),
        CreationDate = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$get_identity_provider_by_identifier(
      UserPoolId = "string",
      IdpIdentifier = "string"
    )
