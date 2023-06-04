<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_nat_gateways</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more of your NAT gateways

### Description

Describes one or more of your NAT gateways.

### Usage

    ec2_describe_nat_gateways(DryRun, Filter, MaxResults, NatGatewayIds,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_describe_nat_gateways_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_describe_nat_gateways_:_Filter">Filter</code></td>
<td><p>One or more filters.</p>
<ul>
<li><p><code>nat-gateway-id</code> - The ID of the NAT gateway.</p></li>
<li><p><code>state</code> - The state of the NAT gateway
(<code>pending</code> | <code>failed</code> | <code>available</code> |
<code>deleting</code> | <code>deleted</code>).</p></li>
<li><p><code>subnet-id</code> - The ID of the subnet in which the NAT
gateway resides.</p></li>
<li><p><code>tag</code>:\&lt;key\&gt; - The key/value combination of a
tag assigned to the resource. Use the tag key in the filter name and the
tag value as the filter value. For example, to find all resources that
have a tag with the key <code>Owner</code> and the value
<code>TeamA</code>, specify <code>tag:Owner</code> for the filter name
and <code>TeamA</code> for the filter value.</p></li>
<li><p><code>tag-key</code> - The key of a tag assigned to the resource.
Use this filter to find all resources assigned a tag with a specific
key, regardless of the tag value.</p></li>
<li><p><code>vpc-id</code> - The ID of the VPC in which the NAT gateway
resides.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_nat_gateways_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this request. To get
the next page of items, make another request with the token returned in
the output. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination">Pagination</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_nat_gateways_:_NatGatewayIds">NatGatewayIds</code></td>
<td><p>One or more NAT gateway IDs.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_nat_gateways_:_NextToken">NextToken</code></td>
<td><p>The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NatGateways = list(
        list(
          CreateTime = as.POSIXct(
            "2015-01-01"
          ),
          DeleteTime = as.POSIXct(
            "2015-01-01"
          ),
          FailureCode = "string",
          FailureMessage = "string",
          NatGatewayAddresses = list(
            list(
              AllocationId = "string",
              NetworkInterfaceId = "string",
              PrivateIp = "string",
              PublicIp = "string",
              AssociationId = "string",
              IsPrimary = TRUE|FALSE,
              FailureMessage = "string",
              Status = "assigning"|"unassigning"|"associating"|"disassociating"|"succeeded"|"failed"
            )
          ),
          NatGatewayId = "string",
          ProvisionedBandwidth = list(
            ProvisionTime = as.POSIXct(
              "2015-01-01"
            ),
            Provisioned = "string",
            RequestTime = as.POSIXct(
              "2015-01-01"
            ),
            Requested = "string",
            Status = "string"
          ),
          State = "pending"|"failed"|"available"|"deleting"|"deleted",
          SubnetId = "string",
          VpcId = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          ConnectivityType = "private"|"public"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_nat_gateways(
      DryRun = TRUE|FALSE,
      Filter = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      NatGatewayIds = list(
        "string"
      ),
      NextToken = "string"
    )

### Examples

    ## Not run: 
    # This example describes the NAT gateway for the specified VPC.
    svc$describe_nat_gateways(
      Filter = list(
        list(
          Name = "vpc-id",
          Values = list(
            "vpc-1a2b3c4d"
          )
        )
      )
    )

    ## End(Not run)
