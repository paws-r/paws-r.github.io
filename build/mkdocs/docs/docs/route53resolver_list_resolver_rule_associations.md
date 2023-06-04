<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_list_resolver_rule_associations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the associations that were created between Resolver rules and VPCs using the current Amazon Web Services account

### Description

Lists the associations that were created between Resolver rules and VPCs
using the current Amazon Web Services account.

### Usage

    route53resolver_list_resolver_rule_associations(MaxResults, NextToken,
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
id="route53resolver_list_resolver_rule_associations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of rule associations that you want to return
in the response to a <code>list_resolver_rule_associations</code>
request. If you don't specify a value for <code>MaxResults</code>,
Resolver returns up to 100 rule associations.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_list_resolver_rule_associations_:_NextToken">NextToken</code></td>
<td><p>For the first <code>ListResolverRuleAssociation</code> request,
omit this value.</p>
<p>If you have more than <code>MaxResults</code> rule associations, you
can submit another <code>ListResolverRuleAssociation</code> request to
get the next group of rule associations. In the next request, specify
the value of <code>NextToken</code> from the previous response.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53resolver_list_resolver_rule_associations_:_Filters">Filters</code></td>
<td><p>An optional specification to return a subset of Resolver rules,
such as Resolver rules that are associated with the same VPC ID.</p>
<p>If you submit a second or subsequent
<code>list_resolver_rule_associations</code> request and specify the
<code>NextToken</code> parameter, you must use the same values for
<code>Filters</code>, if any, as in the previous request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      MaxResults = 123,
      ResolverRuleAssociations = list(
        list(
          Id = "string",
          ResolverRuleId = "string",
          Name = "string",
          VPCId = "string",
          Status = "CREATING"|"COMPLETE"|"DELETING"|"FAILED"|"OVERRIDDEN",
          StatusMessage = "string"
        )
      )
    )

### Request syntax

    svc$list_resolver_rule_associations(
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
