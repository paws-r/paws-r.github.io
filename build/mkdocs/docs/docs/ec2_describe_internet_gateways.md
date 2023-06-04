<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_internet_gateways</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more of your internet gateways

### Description

Describes one or more of your internet gateways.

### Usage

    ec2_describe_internet_gateways(Filters, DryRun, InternetGatewayIds,
      NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_internet_gateways_:_Filters">Filters</code></td>
<td><p>One or more filters.</p>
<ul>
<li><p><code>attachment.state</code> - The current state of the
attachment between the gateway and the VPC (<code>available</code>).
Present only if a VPC is attached.</p></li>
<li><p><code>attachment.vpc-id</code> - The ID of an attached
VPC.</p></li>
<li><p><code>internet-gateway-id</code> - The ID of the Internet
gateway.</p></li>
<li><p><code>owner-id</code> - The ID of the Amazon Web Services account
that owns the internet gateway.</p></li>
<li><p><code>tag</code>:\&lt;key\&gt; - The key/value combination of a
tag assigned to the resource. Use the tag key in the filter name and the
tag value as the filter value. For example, to find all resources that
have a tag with the key <code>Owner</code> and the value
<code>TeamA</code>, specify <code>tag:Owner</code> for the filter name
and <code>TeamA</code> for the filter value.</p></li>
<li><p><code>tag-key</code> - The key of a tag assigned to the resource.
Use this filter to find all resources assigned a tag with a specific
key, regardless of the tag value.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_internet_gateways_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_internet_gateways_:_InternetGatewayIds">InternetGatewayIds</code></td>
<td><p>One or more internet gateway IDs.</p>
<p>Default: Describes all your internet gateways.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_internet_gateways_:_NextToken">NextToken</code></td>
<td><p>The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_internet_gateways_:_MaxResults">MaxResults</code></td>
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
      InternetGateways = list(
        list(
          Attachments = list(
            list(
              State = "attaching"|"attached"|"detaching"|"detached",
              VpcId = "string"
            )
          ),
          InternetGatewayId = "string",
          OwnerId = "string",
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

    svc$describe_internet_gateways(
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      DryRun = TRUE|FALSE,
      InternetGatewayIds = list(
        "string"
      ),
      NextToken = "string",
      MaxResults = 123
    )

### Examples

    ## Not run: 
    # This example describes the Internet gateway for the specified VPC.
    svc$describe_internet_gateways(
      Filters = list(
        list(
          Name = "attachment.vpc-id",
          Values = list(
            "vpc-a01106c2"
          )
        )
      )
    )

    ## End(Not run)
