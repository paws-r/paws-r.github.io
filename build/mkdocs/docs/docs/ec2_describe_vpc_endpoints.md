<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_vpc_endpoints</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes your VPC endpoints

### Description

Describes your VPC endpoints.

### Usage

    ec2_describe_vpc_endpoints(DryRun, VpcEndpointIds, Filters, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_describe_vpc_endpoints_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_vpc_endpoints_:_VpcEndpointIds">VpcEndpointIds</code></td>
<td><p>The IDs of the VPC endpoints.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_describe_vpc_endpoints_:_Filters">Filters</code></td>
<td><p>The filters.</p>
<ul>
<li><p><code>ip-address-type</code> - The IP address type
(<code>ipv4</code> | <code>ipv6</code>).</p></li>
<li><p><code>service-name</code> - The name of the service.</p></li>
<li><p><code>tag</code>:\&lt;key\&gt; - The key/value combination of a
tag assigned to the resource. Use the tag key in the filter name and the
tag value as the filter value. For example, to find all resources that
have a tag with the key <code>Owner</code> and the value
<code>TeamA</code>, specify <code>tag:Owner</code> for the filter name
and <code>TeamA</code> for the filter value.</p></li>
<li><p><code>tag-key</code> - The key of a tag assigned to the resource.
Use this filter to find all resources assigned a tag with a specific
key, regardless of the tag value.</p></li>
<li><p><code>vpc-id</code> - The ID of the VPC in which the endpoint
resides.</p></li>
<li><p><code>vpc-endpoint-id</code> - The ID of the endpoint.</p></li>
<li><p><code>vpc-endpoint-state</code> - The state of the endpoint
(<code>pendingAcceptance</code> | <code>pending</code> |
<code>available</code> | <code>deleting</code> | <code>deleted</code> |
<code>rejected</code> | <code>failed</code>).</p></li>
<li><p><code>vpc-endpoint-type</code> - The type of VPC endpoint
(<code>Interface</code> | <code>Gateway</code> |
<code>GatewayLoadBalancer</code>).</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_vpc_endpoints_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this request. The
request returns a token that you can specify in a subsequent call to get
the next set of results.</p>
<p>Constraint: If the value is greater than 1,000, we return only 1,000
items.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_vpc_endpoints_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a prior call.)</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VpcEndpoints = list(
        list(
          VpcEndpointId = "string",
          VpcEndpointType = "Interface"|"Gateway"|"GatewayLoadBalancer",
          VpcId = "string",
          ServiceName = "string",
          State = "PendingAcceptance"|"Pending"|"Available"|"Deleting"|"Deleted"|"Rejected"|"Failed"|"Expired",
          PolicyDocument = "string",
          RouteTableIds = list(
            "string"
          ),
          SubnetIds = list(
            "string"
          ),
          Groups = list(
            list(
              GroupId = "string",
              GroupName = "string"
            )
          ),
          IpAddressType = "ipv4"|"dualstack"|"ipv6",
          DnsOptions = list(
            DnsRecordIpType = "ipv4"|"dualstack"|"ipv6"|"service-defined",
            PrivateDnsOnlyForInboundResolverEndpoint = TRUE|FALSE
          ),
          PrivateDnsEnabled = TRUE|FALSE,
          RequesterManaged = TRUE|FALSE,
          NetworkInterfaceIds = list(
            "string"
          ),
          DnsEntries = list(
            list(
              DnsName = "string",
              HostedZoneId = "string"
            )
          ),
          CreationTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          OwnerId = "string",
          LastError = list(
            Message = "string",
            Code = "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_vpc_endpoints(
      DryRun = TRUE|FALSE,
      VpcEndpointIds = list(
        "string"
      ),
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
