<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_vpc_peering_connections</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more of your VPC peering connections

### Description

Describes one or more of your VPC peering connections.

### Usage

    ec2_describe_vpc_peering_connections(Filters, DryRun,
      VpcPeeringConnectionIds, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_vpc_peering_connections_:_Filters">Filters</code></td>
<td><p>One or more filters.</p>
<ul>
<li><p><code>accepter-vpc-info.cidr-block</code> - The IPv4 CIDR block
of the accepter VPC.</p></li>
<li><p><code>accepter-vpc-info.owner-id</code> - The ID of the Amazon
Web Services account that owns the accepter VPC.</p></li>
<li><p><code>accepter-vpc-info.vpc-id</code> - The ID of the accepter
VPC.</p></li>
<li><p><code>expiration-time</code> - The expiration date and time for
the VPC peering connection.</p></li>
<li><p><code>requester-vpc-info.cidr-block</code> - The IPv4 CIDR block
of the requester's VPC.</p></li>
<li><p><code>requester-vpc-info.owner-id</code> - The ID of the Amazon
Web Services account that owns the requester VPC.</p></li>
<li><p><code>requester-vpc-info.vpc-id</code> - The ID of the requester
VPC.</p></li>
<li><p><code>status-code</code> - The status of the VPC peering
connection (<code>pending-acceptance</code> | <code>failed</code> |
<code>expired</code> | <code>provisioning</code> | <code>active</code> |
<code>deleting</code> | <code>deleted</code> |
<code>rejected</code>).</p></li>
<li><p><code>status-message</code> - A message that provides more
information about the status of the VPC peering connection, if
applicable.</p></li>
<li><p><code>tag</code>:\&lt;key\&gt; - The key/value combination of a
tag assigned to the resource. Use the tag key in the filter name and the
tag value as the filter value. For example, to find all resources that
have a tag with the key <code>Owner</code> and the value
<code>TeamA</code>, specify <code>tag:Owner</code> for the filter name
and <code>TeamA</code> for the filter value.</p></li>
<li><p><code>tag-key</code> - The key of a tag assigned to the resource.
Use this filter to find all resources assigned a tag with a specific
key, regardless of the tag value.</p></li>
<li><p><code>vpc-peering-connection-id</code> - The ID of the VPC
peering connection.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_vpc_peering_connections_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_vpc_peering_connections_:_VpcPeeringConnectionIds">VpcPeeringConnectionIds</code></td>
<td><p>One or more VPC peering connection IDs.</p>
<p>Default: Describes all your VPC peering connections.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_vpc_peering_connections_:_NextToken">NextToken</code></td>
<td><p>The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_vpc_peering_connections_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this request. To get
the next page of items, make another request with the token returned in
the output. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination">Pagination</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VpcPeeringConnections = list(
        list(
          AccepterVpcInfo = list(
            CidrBlock = "string",
            Ipv6CidrBlockSet = list(
              list(
                Ipv6CidrBlock = "string"
              )
            ),
            CidrBlockSet = list(
              list(
                CidrBlock = "string"
              )
            ),
            OwnerId = "string",
            PeeringOptions = list(
              AllowDnsResolutionFromRemoteVpc = TRUE|FALSE,
              AllowEgressFromLocalClassicLinkToRemoteVpc = TRUE|FALSE,
              AllowEgressFromLocalVpcToRemoteClassicLink = TRUE|FALSE
            ),
            VpcId = "string",
            Region = "string"
          ),
          ExpirationTime = as.POSIXct(
            "2015-01-01"
          ),
          RequesterVpcInfo = list(
            CidrBlock = "string",
            Ipv6CidrBlockSet = list(
              list(
                Ipv6CidrBlock = "string"
              )
            ),
            CidrBlockSet = list(
              list(
                CidrBlock = "string"
              )
            ),
            OwnerId = "string",
            PeeringOptions = list(
              AllowDnsResolutionFromRemoteVpc = TRUE|FALSE,
              AllowEgressFromLocalClassicLinkToRemoteVpc = TRUE|FALSE,
              AllowEgressFromLocalVpcToRemoteClassicLink = TRUE|FALSE
            ),
            VpcId = "string",
            Region = "string"
          ),
          Status = list(
            Code = "initiating-request"|"pending-acceptance"|"active"|"deleted"|"rejected"|"failed"|"expired"|"provisioning"|"deleting",
            Message = "string"
          ),
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          VpcPeeringConnectionId = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_vpc_peering_connections(
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      DryRun = TRUE|FALSE,
      VpcPeeringConnectionIds = list(
        "string"
      ),
      NextToken = "string",
      MaxResults = 123
    )
