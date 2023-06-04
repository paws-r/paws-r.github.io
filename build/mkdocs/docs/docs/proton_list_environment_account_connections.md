<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_list_environment_account_connections</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## View a list of environment account connections

### Description

View a list of environment account connections.

For more information, see [Environment account
connections](https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html)
in the *Proton User guide*.

### Usage

    proton_list_environment_account_connections(environmentName, maxResults,
      nextToken, requestedBy, statuses)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_list_environment_account_connections_:_environmentName">environmentName</code></td>
<td><p>The environment name that's associated with each listed
environment account connection.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_list_environment_account_connections_:_maxResults">maxResults</code></td>
<td><p>The maximum number of environment account connections to
list.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_list_environment_account_connections_:_nextToken">nextToken</code></td>
<td><p>A token that indicates the location of the next environment
account connection in the array of environment account connections,
after the list of environment account connections that was previously
requested.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_list_environment_account_connections_:_requestedBy">requestedBy</code></td>
<td><p>[required] The type of account making the
<code>list_environment_account_connections</code> request.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_list_environment_account_connections_:_statuses">statuses</code></td>
<td><p>The status details for each listed environment account
connection.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      environmentAccountConnections = list(
        list(
          arn = "string",
          componentRoleArn = "string",
          environmentAccountId = "string",
          environmentName = "string",
          id = "string",
          lastModifiedAt = as.POSIXct(
            "2015-01-01"
          ),
          managementAccountId = "string",
          requestedAt = as.POSIXct(
            "2015-01-01"
          ),
          roleArn = "string",
          status = "PENDING"|"CONNECTED"|"REJECTED"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_environment_account_connections(
      environmentName = "string",
      maxResults = 123,
      nextToken = "string",
      requestedBy = "MANAGEMENT_ACCOUNT"|"ENVIRONMENT_ACCOUNT",
      statuses = list(
        "PENDING"|"CONNECTED"|"REJECTED"
      )
    )
