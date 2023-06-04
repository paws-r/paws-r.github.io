<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_describe_user_pool_client</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Client method for returning the configuration information and metadata of the specified user pool app client

### Description

Client method for returning the configuration information and metadata
of the specified user pool app client.

### Usage

    cognitoidentityprovider_describe_user_pool_client(UserPoolId, ClientId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_describe_user_pool_client_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID for the user pool you want to
describe.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_describe_user_pool_client_:_ClientId">ClientId</code></td>
<td><p>[required] The app client ID of the app associated with the user
pool.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UserPoolClient = list(
        UserPoolId = "string",
        ClientName = "string",
        ClientId = "string",
        ClientSecret = "string",
        LastModifiedDate = as.POSIXct(
          "2015-01-01"
        ),
        CreationDate = as.POSIXct(
          "2015-01-01"
        ),
        RefreshTokenValidity = 123,
        AccessTokenValidity = 123,
        IdTokenValidity = 123,
        TokenValidityUnits = list(
          AccessToken = "seconds"|"minutes"|"hours"|"days",
          IdToken = "seconds"|"minutes"|"hours"|"days",
          RefreshToken = "seconds"|"minutes"|"hours"|"days"
        ),
        ReadAttributes = list(
          "string"
        ),
        WriteAttributes = list(
          "string"
        ),
        ExplicitAuthFlows = list(
          "ADMIN_NO_SRP_AUTH"|"CUSTOM_AUTH_FLOW_ONLY"|"USER_PASSWORD_AUTH"|"ALLOW_ADMIN_USER_PASSWORD_AUTH"|"ALLOW_CUSTOM_AUTH"|"ALLOW_USER_PASSWORD_AUTH"|"ALLOW_USER_SRP_AUTH"|"ALLOW_REFRESH_TOKEN_AUTH"
        ),
        SupportedIdentityProviders = list(
          "string"
        ),
        CallbackURLs = list(
          "string"
        ),
        LogoutURLs = list(
          "string"
        ),
        DefaultRedirectURI = "string",
        AllowedOAuthFlows = list(
          "code"|"implicit"|"client_credentials"
        ),
        AllowedOAuthScopes = list(
          "string"
        ),
        AllowedOAuthFlowsUserPoolClient = TRUE|FALSE,
        AnalyticsConfiguration = list(
          ApplicationId = "string",
          ApplicationArn = "string",
          RoleArn = "string",
          ExternalId = "string",
          UserDataShared = TRUE|FALSE
        ),
        PreventUserExistenceErrors = "LEGACY"|"ENABLED",
        EnableTokenRevocation = TRUE|FALSE,
        EnablePropagateAdditionalUserContextData = TRUE|FALSE,
        AuthSessionValidity = 123
      )
    )

### Request syntax

    svc$describe_user_pool_client(
      UserPoolId = "string",
      ClientId = "string"
    )
