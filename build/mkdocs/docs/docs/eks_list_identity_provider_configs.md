<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eks_list_identity_provider_configs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## A list of identity provider configurations

### Description

A list of identity provider configurations.

### Usage

    eks_list_identity_provider_configs(clusterName, maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="eks_list_identity_provider_configs_:_clusterName">clusterName</code></td>
<td><p>[required] The cluster name that you want to list identity
provider configurations for.</p></td>
</tr>
<tr class="even">
<td><code
id="eks_list_identity_provider_configs_:_maxResults">maxResults</code></td>
<td><p>The maximum number of identity provider configurations returned
by <code>list_identity_provider_configs</code> in paginated output. When
you use this parameter, <code>list_identity_provider_configs</code>
returns only <code>maxResults</code> results in a single page along with
a <code>nextToken</code> response element. You can see the remaining
results of the initial request by sending another
<code>list_identity_provider_configs</code> request with the returned
<code>nextToken</code> value. This value can be between 1 and 100. If
you don't use this parameter,
<code>list_identity_provider_configs</code> returns up to 100 results
and a <code>nextToken</code> value, if applicable.</p></td>
</tr>
<tr class="odd">
<td><code
id="eks_list_identity_provider_configs_:_nextToken">nextToken</code></td>
<td><p>The <code>nextToken</code> value returned from a previous
paginated <code>IdentityProviderConfigsRequest</code> where
<code>maxResults</code> was used and the results exceeded the value of
that parameter. Pagination continues from the end of the previous
results that returned the <code>nextToken</code> value.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      identityProviderConfigs = list(
        list(
          type = "string",
          name = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_identity_provider_configs(
      clusterName = "string",
      maxResults = 123,
      nextToken = "string"
    )
