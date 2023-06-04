<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_describe_users</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list that describes one or more specified users in the user pool

### Description

Retrieves a list that describes one or more specified users in the user
pool.

### Usage

    appstream_describe_users(AuthenticationType, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appstream_describe_users_:_AuthenticationType">AuthenticationType</code></td>
<td><p>[required] The authentication type for the users in the user pool
to describe. You must specify USERPOOL.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_describe_users_:_MaxResults">MaxResults</code></td>
<td><p>The maximum size of each page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_describe_users_:_NextToken">NextToken</code></td>
<td><p>The pagination token to use to retrieve the next page of results
for this operation. If this value is null, it retrieves the first
page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Users = list(
        list(
          Arn = "string",
          UserName = "string",
          Enabled = TRUE|FALSE,
          Status = "string",
          FirstName = "string",
          LastName = "string",
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          AuthenticationType = "API"|"SAML"|"USERPOOL"|"AWS_AD"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_users(
      AuthenticationType = "API"|"SAML"|"USERPOOL"|"AWS_AD",
      MaxResults = 123,
      NextToken = "string"
    )
