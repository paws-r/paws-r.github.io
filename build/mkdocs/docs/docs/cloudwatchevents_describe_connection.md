<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevents_describe_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves details about a connection

### Description

Retrieves details about a connection.

### Usage

    cloudwatchevents_describe_connection(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevents_describe_connection_:_Name">Name</code></td>
<td><p>[required] The name of the connection to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConnectionArn = "string",
      Name = "string",
      Description = "string",
      ConnectionState = "CREATING"|"UPDATING"|"DELETING"|"AUTHORIZED"|"DEAUTHORIZED"|"AUTHORIZING"|"DEAUTHORIZING",
      StateReason = "string",
      AuthorizationType = "BASIC"|"OAUTH_CLIENT_CREDENTIALS"|"API_KEY",
      SecretArn = "string",
      AuthParameters = list(
        BasicAuthParameters = list(
          Username = "string"
        ),
        OAuthParameters = list(
          ClientParameters = list(
            ClientID = "string"
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
          ApiKeyName = "string"
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
      ),
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTime = as.POSIXct(
        "2015-01-01"
      ),
      LastAuthorizedTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_connection(
      Name = "string"
    )
