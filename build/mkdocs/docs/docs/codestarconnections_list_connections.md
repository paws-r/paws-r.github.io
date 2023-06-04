<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestarconnections_list_connections</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the connections associated with your account

### Description

Lists the connections associated with your account.

### Usage

    codestarconnections_list_connections(ProviderTypeFilter, HostArnFilter,
      MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codestarconnections_list_connections_:_ProviderTypeFilter">ProviderTypeFilter</code></td>
<td><p>Filters the list of connections to those associated with a
specified provider, such as Bitbucket.</p></td>
</tr>
<tr class="even">
<td><code
id="codestarconnections_list_connections_:_HostArnFilter">HostArnFilter</code></td>
<td><p>Filters the list of connections to those associated with a
specified host.</p></td>
</tr>
<tr class="odd">
<td><code
id="codestarconnections_list_connections_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="even">
<td><code
id="codestarconnections_list_connections_:_NextToken">NextToken</code></td>
<td><p>The token that was returned from the previous
<code>list_connections</code> call, which can be used to return the next
set of connections in the list.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Connections = list(
        list(
          ConnectionName = "string",
          ConnectionArn = "string",
          ProviderType = "Bitbucket"|"GitHub"|"GitHubEnterpriseServer",
          OwnerAccountId = "string",
          ConnectionStatus = "PENDING"|"AVAILABLE"|"ERROR",
          HostArn = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_connections(
      ProviderTypeFilter = "Bitbucket"|"GitHub"|"GitHubEnterpriseServer",
      HostArnFilter = "string",
      MaxResults = 123,
      NextToken = "string"
    )
