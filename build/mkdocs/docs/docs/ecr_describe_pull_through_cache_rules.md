<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecr_describe_pull_through_cache_rules</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the pull through cache rules for a registry

### Description

Returns the pull through cache rules for a registry.

### Usage

    ecr_describe_pull_through_cache_rules(registryId, ecrRepositoryPrefixes,
      nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecr_describe_pull_through_cache_rules_:_registryId">registryId</code></td>
<td><p>The Amazon Web Services account ID associated with the registry
to return the pull through cache rules for. If you do not specify a
registry, the default registry is assumed.</p></td>
</tr>
<tr class="even">
<td><code
id="ecr_describe_pull_through_cache_rules_:_ecrRepositoryPrefixes">ecrRepositoryPrefixes</code></td>
<td><p>The Amazon ECR repository prefixes associated with the pull
through cache rules to return. If no repository prefix value is
specified, all pull through cache rules are returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecr_describe_pull_through_cache_rules_:_nextToken">nextToken</code></td>
<td><p>The <code>nextToken</code> value returned from a previous
paginated <code>DescribePullThroughCacheRulesRequest</code> request
where <code>maxResults</code> was used and the results exceeded the
value of that parameter. Pagination continues from the end of the
previous results that returned the <code>nextToken</code> value. This
value is null when there are no more results to return.</p></td>
</tr>
<tr class="even">
<td><code
id="ecr_describe_pull_through_cache_rules_:_maxResults">maxResults</code></td>
<td><p>The maximum number of pull through cache rules returned by
<code>DescribePullThroughCacheRulesRequest</code> in paginated output.
When this parameter is used,
<code>DescribePullThroughCacheRulesRequest</code> only returns
<code>maxResults</code> results in a single page along with a
<code>nextToken</code> response element. The remaining results of the
initial request can be seen by sending another
<code>DescribePullThroughCacheRulesRequest</code> request with the
returned <code>nextToken</code> value. This value can be between 1 and
1000. If this parameter is not used, then
<code>DescribePullThroughCacheRulesRequest</code> returns up to 100
results and a <code>nextToken</code> value, if applicable.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      pullThroughCacheRules = list(
        list(
          ecrRepositoryPrefix = "string",
          upstreamRegistryUrl = "string",
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          registryId = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_pull_through_cache_rules(
      registryId = "string",
      ecrRepositoryPrefixes = list(
        "string"
      ),
      nextToken = "string",
      maxResults = 123
    )
