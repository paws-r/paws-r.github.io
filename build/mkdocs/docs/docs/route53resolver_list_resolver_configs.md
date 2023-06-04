<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_list_resolver_configs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the Resolver configurations that you have defined

### Description

Retrieves the Resolver configurations that you have defined. Route 53
Resolver uses the configurations to manage DNS resolution behavior for
your VPCs.

### Usage

    route53resolver_list_resolver_configs(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_list_resolver_configs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of Resolver configurations that you want to
return in the response to a <code>list_resolver_configs</code> request.
If you don't specify a value for <code>MaxResults</code>, up to 100
Resolver configurations are returned.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_list_resolver_configs_:_NextToken">NextToken</code></td>
<td><p>(Optional) If the current Amazon Web Services account has more
than <code>MaxResults</code> Resolver configurations, use
<code>NextToken</code> to get the second and subsequent pages of
results.</p>
<p>For the first <code>list_resolver_configs</code> request, omit this
value.</p>
<p>For the second and subsequent requests, get the value of
<code>NextToken</code> from the previous response and specify that value
for <code>NextToken</code> in the request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      ResolverConfigs = list(
        list(
          Id = "string",
          ResourceId = "string",
          OwnerId = "string",
          AutodefinedReverse = "ENABLING"|"ENABLED"|"DISABLING"|"DISABLED"|"UPDATING_TO_USE_LOCAL_RESOURCE_SETTING"|"USE_LOCAL_RESOURCE_SETTING"
        )
      )
    )

### Request syntax

    svc$list_resolver_configs(
      MaxResults = 123,
      NextToken = "string"
    )
