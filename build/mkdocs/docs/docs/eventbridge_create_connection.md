<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eventbridge_create_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a connection

### Description

Creates a connection. A connection defines the authorization type and
credentials to use for authorization with an API destination HTTP
endpoint.

### Usage

    eventbridge_create_connection(Name, Description, AuthorizationType,
      AuthParameters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="eventbridge_create_connection_:_Name">Name</code></td>
<td><p>[required] The name for the connection to create.</p></td>
</tr>
<tr class="even">
<td><code
id="eventbridge_create_connection_:_Description">Description</code></td>
<td><p>A description for the connection to create.</p></td>
</tr>
<tr class="odd">
<td><code
id="eventbridge_create_connection_:_AuthorizationType">AuthorizationType</code></td>
<td><p>[required] The type of authorization to use for the
connection.</p>
<p>OAUTH tokens are refreshed when a 401 or 407 response is
returned.</p></td>
</tr>
<tr class="even">
<td><code
id="eventbridge_create_connection_:_AuthParameters">AuthParameters</code></td>
<td><p>[required] A <code>CreateConnectionAuthRequestParameters</code>
object that contains the authorization parameters to use to authorize
with the endpoint.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConnectionArn = "string",
      ConnectionState = "CREATING"|"UPDATING"|"DELETING"|"AUTHORIZED"|"DEAUTHORIZED"|"AUTHORIZING"|"DEAUTHORIZING",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$create_connection(
      Name = "string",
      Description = "string",
      AuthorizationType = "BASIC"|"OAUTH_CLIENT_CREDENTIALS"|"API_KEY",
      AuthParameters = list(
        BasicAuthParameters = list(
          Username = "string",
          Password = "string"
        ),
        OAuthParameters = list(
          ClientParameters = list(
            ClientID = "string",
            ClientSecret = "string"
          ),
          AuthorizationEndpoint = "string",
          HttpMethod = "GET"|"POST"|"PUT",
          OAuthHttpParameters = list(
            HeaderParameters = list(
              list(
                Key = "string",
                Value = "string",
                IsValueSecret = TRUE|FALSE
              )
            ),
            QueryStringParameters = list(
              list(
                Key = "string",
                Value = "string",
                IsValueSecret = TRUE|FALSE
              )
            ),
            BodyParameters = list(
              list(
                Key = "string",
                Value = "string",
                IsValueSecret = TRUE|FALSE
              )
            )
          )
        ),
        ApiKeyAuthParameters = list(
          ApiKeyName = "string",
          ApiKeyValue = "string"
        ),
        InvocationHttpParameters = list(
          HeaderParameters = list(
            list(
              Key = "string",
              Value = "string",
              IsValueSecret = TRUE|FALSE
            )
          ),
          QueryStringParameters = list(
            list(
              Key = "string",
              Value = "string",
              IsValueSecret = TRUE|FALSE
            )
          ),
          BodyParameters = list(
            list(
              Key = "string",
              Value = "string",
              IsValueSecret = TRUE|FALSE
            )
          )
        )
      )
    )
