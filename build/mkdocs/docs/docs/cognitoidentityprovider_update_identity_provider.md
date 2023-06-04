<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_update_identity_provider</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates IdP information for a user pool

### Description

Updates IdP information for a user pool.

### Usage

    cognitoidentityprovider_update_identity_provider(UserPoolId,
      ProviderName, ProviderDetails, AttributeMapping, IdpIdentifiers)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_update_identity_provider_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_update_identity_provider_:_ProviderName">ProviderName</code></td>
<td><p>[required] The IdP name.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_update_identity_provider_:_ProviderDetails">ProviderDetails</code></td>
<td><p>The IdP details to be updated, such as <code>MetadataURL</code>
and <code>MetadataFile</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_update_identity_provider_:_AttributeMapping">AttributeMapping</code></td>
<td><p>The IdP attribute mapping to be changed.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_update_identity_provider_:_IdpIdentifiers">IdpIdentifiers</code></td>
<td><p>A list of IdP identifiers.</p></td>
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

    svc$update_identity_provider(
      UserPoolId = "string",
      ProviderName = "string",
      ProviderDetails = list(
        "string"
      ),
      AttributeMapping = list(
        "string"
      ),
      IdpIdentifiers = list(
        "string"
      )
    )
