<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_list_firewall_domain_lists</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the firewall domain lists that you have defined

### Description

Retrieves the firewall domain lists that you have defined. For each
firewall domain list, you can retrieve the domains that are defined for
a list by calling `list_firewall_domains`.

A single call to this list operation might return only a partial list of
the domain lists. For information, see `MaxResults`.

### Usage

    route53resolver_list_firewall_domain_lists(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_list_firewall_domain_lists_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of objects that you want Resolver to return
for this request. If more objects are available, in the response,
Resolver provides a <code>NextToken</code> value that you can use in a
subsequent call to get the next batch of objects.</p>
<p>If you don't specify a value for <code>MaxResults</code>, Resolver
returns up to 100 objects.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_list_firewall_domain_lists_:_NextToken">NextToken</code></td>
<td><p>For the first call to this list request, omit this value.</p>
<p>When you request a list of objects, Resolver returns at most the
number of objects specified in <code>MaxResults</code>. If more objects
are available for retrieval, Resolver returns a <code>NextToken</code>
value in the response. To retrieve the next batch of objects, use the
token that was returned for the prior request in your next
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      FirewallDomainLists = list(
        list(
          Id = "string",
          Arn = "string",
          Name = "string",
          CreatorRequestId = "string",
          ManagedOwnerName = "string"
        )
      )
    )

### Request syntax

    svc$list_firewall_domain_lists(
      MaxResults = 123,
      NextToken = "string"
    )
