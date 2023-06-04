<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestarconnections_list_hosts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the hosts associated with your account

### Description

Lists the hosts associated with your account.

### Usage

    codestarconnections_list_hosts(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codestarconnections_list_hosts_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="even">
<td><code
id="codestarconnections_list_hosts_:_NextToken">NextToken</code></td>
<td><p>The token that was returned from the previous
<code>list_hosts</code> call, which can be used to return the next set
of hosts in the list.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Hosts = list(
        list(
          Name = "string",
          HostArn = "string",
          ProviderType = "Bitbucket"|"GitHub"|"GitHubEnterpriseServer",
          ProviderEndpoint = "string",
          VpcConfiguration = list(
            VpcId = "string",
            SubnetIds = list(
              "string"
            ),
            SecurityGroupIds = list(
              "string"
            ),
            TlsCertificate = "string"
          ),
          Status = "string",
          StatusMessage = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_hosts(
      MaxResults = 123,
      NextToken = "string"
    )
