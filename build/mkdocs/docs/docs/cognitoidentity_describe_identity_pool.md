<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentity_describe_identity_pool</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets details about a particular identity pool, including the pool name, ID description, creation date, and current number of users

### Description

Gets details about a particular identity pool, including the pool name,
ID description, creation date, and current number of users.

You must use AWS Developer credentials to call this API.

### Usage

    cognitoidentity_describe_identity_pool(IdentityPoolId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentity_describe_identity_pool_:_IdentityPoolId">IdentityPoolId</code></td>
<td><p>[required] An identity pool ID in the format
REGION:GUID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IdentityPoolId = "string",
      IdentityPoolName = "string",
      AllowUnauthenticatedIdentities = TRUE|FALSE,
      AllowClassicFlow = TRUE|FALSE,
      SupportedLoginProviders = list(
        "string"
      ),
      DeveloperProviderName = "string",
      OpenIdConnectProviderARNs = list(
        "string"
      ),
      CognitoIdentityProviders = list(
        list(
          ProviderName = "string",
          ClientId = "string",
          ServerSideTokenCheck = TRUE|FALSE
        )
      ),
      SamlProviderARNs = list(
        "string"
      ),
      IdentityPoolTags = list(
        "string"
      )
    )

### Request syntax

    svc$describe_identity_pool(
      IdentityPoolId = "string"
    )
