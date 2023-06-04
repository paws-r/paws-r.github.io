<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_vpc_endpoint_connections</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the VPC endpoint connections to your VPC endpoint services, including any endpoints that are pending your acceptance

### Description

Describes the VPC endpoint connections to your VPC endpoint services,
including any endpoints that are pending your acceptance.

### Usage

    ec2_describe_vpc_endpoint_connections(DryRun, Filters, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_vpc_endpoint_connections_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_vpc_endpoint_connections_:_Filters">Filters</code></td>
<td><p>The filters.</p>
<ul>
<li><p><code>ip-address-type</code> - The IP address type
(<code>ipv4</code> | <code>ipv6</code>).</p></li>
<li><p><code>service-id</code> - The ID of the service.</p></li>
<li><p><code>vpc-endpoint-owner</code> - The ID of the Amazon Web
Services account ID that owns the endpoint.</p></li>
<li><p><code>vpc-endpoint-state</code> - The state of the endpoint
(<code>pendingAcceptance</code> | <code>pending</code> |
<code>available</code> | <code>deleting</code> | <code>deleted</code> |
<code>rejected</code> | <code>failed</code>).</p></li>
<li><p><code>vpc-endpoint-id</code> - The ID of the endpoint.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_vpc_endpoint_connections_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return for the request in a
single page. The remaining results of the initial request can be seen by
sending another request with the returned <code>NextToken</code> value.
This value can be between 5 and 1,000; if <code>MaxResults</code> is
given a value larger than 1,000, only 1,000 results are
returned.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_vpc_endpoint_connections_:_NextToken">NextToken</code></td>
<td><p>The token to retrieve the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VpcEndpointConnections = list(
        list(
          ServiceId = "string",
          VpcEndpointId = "string",
          VpcEndpointOwner = "string",
          VpcEndpointState = "PendingAcceptance"|"Pending"|"Available"|"Deleting"|"Deleted"|"Rejected"|"Failed"|"Expired",
          CreationTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          DnsEntries = list(
            list(
              DnsName = "string",
              HostedZoneId = "string"
            )
          ),
          NetworkLoadBalancerArns = list(
            "string"
          ),
          GatewayLoadBalancerArns = list(
            "string"
          ),
          IpAddressType = "ipv4"|"dualstack"|"ipv6",
          VpcEndpointConnectionId = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_vpc_endpoint_connections(
      DryRun = TRUE|FALSE,
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )
