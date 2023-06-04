<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_list_resolver_rules</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the Resolver rules that were created using the current Amazon Web Services account

### Description

Lists the Resolver rules that were created using the current Amazon Web
Services account.

### Usage

    route53resolver_list_resolver_rules(MaxResults, NextToken, Filters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_list_resolver_rules_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of Resolver rules that you want to return in
the response to a <code>list_resolver_rules</code> request. If you don't
specify a value for <code>MaxResults</code>, Resolver returns up to 100
Resolver rules.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_list_resolver_rules_:_NextToken">NextToken</code></td>
<td><p>For the first <code>list_resolver_rules</code> request, omit this
value.</p>
<p>If you have more than <code>MaxResults</code> Resolver rules, you can
submit another <code>list_resolver_rules</code> request to get the next
group of Resolver rules. In the next request, specify the value of
<code>NextToken</code> from the previous response.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53resolver_list_resolver_rules_:_Filters">Filters</code></td>
<td><p>An optional specification to return a subset of Resolver rules,
such as all Resolver rules that are associated with the same Resolver
endpoint.</p>
<p>If you submit a second or subsequent <code>list_resolver_rules</code>
request and specify the <code>NextToken</code> parameter, you must use
the same values for <code>Filters</code>, if any, as in the previous
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      MaxResults = 123,
      ResolverRules = list(
        list(
          Id = "string",
          CreatorRequestId = "string",
          Arn = "string",
          DomainName = "string",
          Status = "COMPLETE"|"DELETING"|"UPDATING"|"FAILED",
          StatusMessage = "string",
          RuleType = "FORWARD"|"SYSTEM"|"RECURSIVE",
          Name = "string",
          TargetIps = list(
            list(
              Ip = "string",
              Port = 123,
              Ipv6 = "string"
            )
          ),
          ResolverEndpointId = "string",
          OwnerId = "string",
          ShareStatus = "NOT_SHARED"|"SHARED_WITH_ME"|"SHARED_BY_ME",
          CreationTime = "string",
          ModificationTime = "string"
        )
      )
    )

### Request syntax

    svc$list_resolver_rules(
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
