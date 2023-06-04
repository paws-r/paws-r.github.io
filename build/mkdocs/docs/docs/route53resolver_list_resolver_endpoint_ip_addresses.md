<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_list_resolver_endpoint_ip_addresses</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the IP addresses for a specified Resolver endpoint

### Description

Gets the IP addresses for a specified Resolver endpoint.

### Usage

    route53resolver_list_resolver_endpoint_ip_addresses(ResolverEndpointId,
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
id="route53resolver_list_resolver_endpoint_ip_addresses_:_ResolverEndpointId">ResolverEndpointId</code></td>
<td><p>[required] The ID of the Resolver endpoint that you want to get
IP addresses for.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_list_resolver_endpoint_ip_addresses_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of IP addresses that you want to return in the
response to a <code>list_resolver_endpoint_ip_addresses</code> request.
If you don't specify a value for <code>MaxResults</code>, Resolver
returns up to 100 IP addresses.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53resolver_list_resolver_endpoint_ip_addresses_:_NextToken">NextToken</code></td>
<td><p>For the first <code>list_resolver_endpoint_ip_addresses</code>
request, omit this value.</p>
<p>If the specified Resolver endpoint has more than
<code>MaxResults</code> IP addresses, you can submit another
<code>list_resolver_endpoint_ip_addresses</code> request to get the next
group of IP addresses. In the next request, specify the value of
<code>NextToken</code> from the previous response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      MaxResults = 123,
      IpAddresses = list(
        list(
          IpId = "string",
          SubnetId = "string",
          Ip = "string",
          Ipv6 = "string",
          Status = "CREATING"|"FAILED_CREATION"|"ATTACHING"|"ATTACHED"|"REMAP_DETACHING"|"REMAP_ATTACHING"|"DETACHING"|"FAILED_RESOURCE_GONE"|"DELETING"|"DELETE_FAILED_FAS_EXPIRED"|"UPDATING",
          StatusMessage = "string",
          CreationTime = "string",
          ModificationTime = "string"
        )
      )
    )

### Request syntax

    svc$list_resolver_endpoint_ip_addresses(
      ResolverEndpointId = "string",
      MaxResults = 123,
      NextToken = "string"
    )
