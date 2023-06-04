<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_describe_identity_provider</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about a specific IdP

### Description

Gets information about a specific IdP.

### Usage

    cognitoidentityprovider_describe_identity_provider(UserPoolId,
      ProviderName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_describe_identity_provider_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_describe_identity_provider_:_ProviderName">ProviderName</code></td>
<td><p>[required] The IdP name.</p></td>
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

    svc$describe_identity_provider(
      UserPoolId = "string",
      ProviderName = "string"
    )
