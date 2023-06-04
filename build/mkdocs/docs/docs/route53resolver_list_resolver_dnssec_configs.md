<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_list_resolver_dnssec_configs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the configurations for DNSSEC validation that are associated with the current Amazon Web Services account

### Description

Lists the configurations for DNSSEC validation that are associated with
the current Amazon Web Services account.

### Usage

    route53resolver_list_resolver_dnssec_configs(MaxResults, NextToken,
      Filters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_list_resolver_dnssec_configs_:_MaxResults">MaxResults</code></td>
<td><p><em>Optional</em>: An integer that specifies the maximum number
of DNSSEC configuration results that you want Amazon Route 53 to return.
If you don't specify a value for <code>MaxResults</code>, Route 53
returns up to 100 configuration per page.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_list_resolver_dnssec_configs_:_NextToken">NextToken</code></td>
<td><p>(Optional) If the current Amazon Web Services account has more
than <code>MaxResults</code> DNSSEC configurations, use
<code>NextToken</code> to get the second and subsequent pages of
results.</p>
<p>For the first <code>list_resolver_dnssec_configs</code> request, omit
this value.</p>
<p>For the second and subsequent requests, get the value of
<code>NextToken</code> from the previous response and specify that value
for <code>NextToken</code> in the request.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53resolver_list_resolver_dnssec_configs_:_Filters">Filters</code></td>
<td><p>An optional specification to return a subset of objects.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      ResolverDnssecConfigs = list(
        list(
          Id = "string",
          OwnerId = "string",
          ResourceId = "string",
          ValidationStatus = "ENABLING"|"ENABLED"|"DISABLING"|"DISABLED"|"UPDATING_TO_USE_LOCAL_RESOURCE_SETTING"|"USE_LOCAL_RESOURCE_SETTING"
        )
      )
    )

### Request syntax

    svc$list_resolver_dnssec_configs(
      MaxResults = 123,
      NextToken = "string",
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      )
    )
