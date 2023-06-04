<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevents_list_connections</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list of connections from the account

### Description

Retrieves a list of connections from the account.

### Usage

    cloudwatchevents_list_connections(NamePrefix, ConnectionState,
      NextToken, Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevents_list_connections_:_NamePrefix">NamePrefix</code></td>
<td><p>A name prefix to filter results returned. Only connections with a
name that starts with the prefix are returned.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevents_list_connections_:_ConnectionState">ConnectionState</code></td>
<td><p>The state of the connection.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevents_list_connections_:_NextToken">NextToken</code></td>
<td><p>The token returned by a previous call to retrieve the next set of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevents_list_connections_:_Limit">Limit</code></td>
<td><p>The maximum number of connections to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Connections = list(
        list(
          ConnectionArn = "string",
          Name = "string",
          ConnectionState = "CREATING"|"UPDATING"|"DELETING"|"AUTHORIZED"|"DEAUTHORIZED"|"AUTHORIZING"|"DEAUTHORIZING",
          StateReason = "string",
          AuthorizationType = "BASIC"|"OAUTH_CLIENT_CREDENTIALS"|"API_KEY",
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_connections(
      NamePrefix = "string",
      ConnectionState = "CREATING"|"UPDATING"|"DELETING"|"AUTHORIZED"|"DEAUTHORIZED"|"AUTHORIZING"|"DEAUTHORIZING",
      NextToken = "string",
      Limit = 123
    )
