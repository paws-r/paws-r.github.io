<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_list_identity_providers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists information about all IdPs for a user pool

### Description

Lists information about all IdPs for a user pool.

### Usage

    cognitoidentityprovider_list_identity_providers(UserPoolId, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_list_identity_providers_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_list_identity_providers_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of IdPs to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_list_identity_providers_:_NextToken">NextToken</code></td>
<td><p>A pagination token.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Providers = list(
        list(
          ProviderName = "string",
          ProviderType = "SAML"|"Facebook"|"Google"|"LoginWithAmazon"|"SignInWithApple"|"OIDC",
          LastModifiedDate = as.POSIXct(
            "2015-01-01"
          ),
          CreationDate = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_identity_providers(
      UserPoolId = "string",
      MaxResults = 123,
      NextToken = "string"
    )
