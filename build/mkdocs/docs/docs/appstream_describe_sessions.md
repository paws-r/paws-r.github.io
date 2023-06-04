<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_describe_sessions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list that describes the streaming sessions for a specified stack and fleet

### Description

Retrieves a list that describes the streaming sessions for a specified
stack and fleet. If a UserId is provided for the stack and fleet, only
streaming sessions for that user are described. If an authentication
type is not provided, the default is to authenticate users using a
streaming URL.

### Usage

    appstream_describe_sessions(StackName, FleetName, UserId, NextToken,
      Limit, AuthenticationType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appstream_describe_sessions_:_StackName">StackName</code></td>
<td><p>[required] The name of the stack. This value is
case-sensitive.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_describe_sessions_:_FleetName">FleetName</code></td>
<td><p>[required] The name of the fleet. This value is
case-sensitive.</p></td>
</tr>
<tr class="odd">
<td><code id="appstream_describe_sessions_:_UserId">UserId</code></td>
<td><p>The user identifier (ID). If you specify a user ID, you must also
specify the authentication type.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_describe_sessions_:_NextToken">NextToken</code></td>
<td><p>The pagination token to use to retrieve the next page of results
for this operation. If this value is null, it retrieves the first
page.</p></td>
</tr>
<tr class="odd">
<td><code id="appstream_describe_sessions_:_Limit">Limit</code></td>
<td><p>The size of each page of results. The default value is 20 and the
maximum value is 50.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_describe_sessions_:_AuthenticationType">AuthenticationType</code></td>
<td><p>The authentication method. Specify <code>API</code> for a user
authenticated using a streaming URL or <code>SAML</code> for a SAML
federated user. The default is to authenticate users using a streaming
URL.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Sessions = list(
        list(
          Id = "string",
          UserId = "string",
          StackName = "string",
          FleetName = "string",
          State = "ACTIVE"|"PENDING"|"EXPIRED",
          ConnectionState = "CONNECTED"|"NOT_CONNECTED",
          StartTime = as.POSIXct(
            "2015-01-01"
          ),
          MaxExpirationTime = as.POSIXct(
            "2015-01-01"
          ),
          AuthenticationType = "API"|"SAML"|"USERPOOL"|"AWS_AD",
          NetworkAccessConfiguration = list(
            EniPrivateIpAddress = "string",
            EniId = "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_sessions(
      StackName = "string",
      FleetName = "string",
      UserId = "string",
      NextToken = "string",
      Limit = 123,
      AuthenticationType = "API"|"SAML"|"USERPOOL"|"AWS_AD"
    )
