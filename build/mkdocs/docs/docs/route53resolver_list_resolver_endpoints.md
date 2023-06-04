<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_list_resolver_endpoints</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all the Resolver endpoints that were created using the current Amazon Web Services account

### Description

Lists all the Resolver endpoints that were created using the current
Amazon Web Services account.

### Usage

    route53resolver_list_resolver_endpoints(MaxResults, NextToken, Filters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_list_resolver_endpoints_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of Resolver endpoints that you want to return
in the response to a <code>list_resolver_endpoints</code> request. If
you don't specify a value for <code>MaxResults</code>, Resolver returns
up to 100 Resolver endpoints.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_list_resolver_endpoints_:_NextToken">NextToken</code></td>
<td><p>For the first <code>list_resolver_endpoints</code> request, omit
this value.</p>
<p>If you have more than <code>MaxResults</code> Resolver endpoints, you
can submit another <code>list_resolver_endpoints</code> request to get
the next group of Resolver endpoints. In the next request, specify the
value of <code>NextToken</code> from the previous response.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53resolver_list_resolver_endpoints_:_Filters">Filters</code></td>
<td><p>An optional specification to return a subset of Resolver
endpoints, such as all inbound Resolver endpoints.</p>
<p>If you submit a second or subsequent
<code>list_resolver_endpoints</code> request and specify the
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
      ResolverEndpoints = list(
        list(
          Id = "string",
          CreatorRequestId = "string",
          Arn = "string",
          Name = "string",
          SecurityGroupIds = list(
            "string"
          ),
          Direction = "INBOUND"|"OUTBOUND",
          IpAddressCount = 123,
          HostVPCId = "string",
          Status = "CREATING"|"OPERATIONAL"|"UPDATING"|"AUTO_RECOVERING"|"ACTION_NEEDED"|"DELETING",
          StatusMessage = "string",
          CreationTime = "string",
          ModificationTime = "string",
          ResolverEndpointType = "IPV6"|"IPV4"|"DUALSTACK"
        )
      )
    )

### Request syntax

    svc$list_resolver_endpoints(
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
