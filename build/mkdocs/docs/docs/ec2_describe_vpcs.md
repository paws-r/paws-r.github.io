<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_vpcs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more of your VPCs

### Description

Describes one or more of your VPCs.

### Usage

    ec2_describe_vpcs(Filters, VpcIds, DryRun, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_describe_vpcs_:_Filters">Filters</code></td>
<td><p>One or more filters.</p>
<ul>
<li><p><code>cidr</code> - The primary IPv4 CIDR block of the VPC. The
CIDR block you specify must exactly match the VPC's CIDR block for
information to be returned for the VPC. Must contain the slash followed
by one or two digits (for example, <code
style="white-space: pre;">⁠/28⁠</code>).</p></li>
<li><p><code>cidr-block-association.cidr-block</code> - An IPv4 CIDR
block associated with the VPC.</p></li>
<li><p><code>cidr-block-association.association-id</code> - The
association ID for an IPv4 CIDR block associated with the VPC.</p></li>
<li><p><code>cidr-block-association.state</code> - The state of an IPv4
CIDR block associated with the VPC.</p></li>
<li><p><code>dhcp-options-id</code> - The ID of a set of DHCP
options.</p></li>
<li><p><code>ipv6-cidr-block-association.ipv6-cidr-block</code> - An
IPv6 CIDR block associated with the VPC.</p></li>
<li><p><code>ipv6-cidr-block-association.ipv6-pool</code> - The ID of
the IPv6 address pool from which the IPv6 CIDR block is
allocated.</p></li>
<li><p><code>ipv6-cidr-block-association.association-id</code> - The
association ID for an IPv6 CIDR block associated with the VPC.</p></li>
<li><p><code>ipv6-cidr-block-association.state</code> - The state of an
IPv6 CIDR block associated with the VPC.</p></li>
<li><p><code>is-default</code> - Indicates whether the VPC is the
default VPC.</p></li>
<li><p><code>owner-id</code> - The ID of the Amazon Web Services account
that owns the VPC.</p></li>
<li><p><code>state</code> - The state of the VPC (<code>pending</code> |
<code>available</code>).</p></li>
<li><p><code>tag</code>:\&lt;key\&gt; - The key/value combination of a
tag assigned to the resource. Use the tag key in the filter name and the
tag value as the filter value. For example, to find all resources that
have a tag with the key <code>Owner</code> and the value
<code>TeamA</code>, specify <code>tag:Owner</code> for the filter name
and <code>TeamA</code> for the filter value.</p></li>
<li><p><code>tag-key</code> - The key of a tag assigned to the resource.
Use this filter to find all resources assigned a tag with a specific
key, regardless of the tag value.</p></li>
<li><p><code>vpc-id</code> - The ID of the VPC.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="ec2_describe_vpcs_:_VpcIds">VpcIds</code></td>
<td><p>One or more VPC IDs.</p>
<p>Default: Describes all your VPCs.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_describe_vpcs_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_describe_vpcs_:_NextToken">NextToken</code></td>
<td><p>The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous
request.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_describe_vpcs_:_MaxResults">MaxResults</code></td>
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
      Vpcs = list(
        list(
          CidrBlock = "string",
          DhcpOptionsId = "string",
          State = "pending"|"available",
          VpcId = "string",
          OwnerId = "string",
          InstanceTenancy = "default"|"dedicated"|"host",
          Ipv6CidrBlockAssociationSet = list(
            list(
              AssociationId = "string",
              Ipv6CidrBlock = "string",
              Ipv6CidrBlockState = list(
                State = "associating"|"associated"|"disassociating"|"disassociated"|"failing"|"failed",
                StatusMessage = "string"
              ),
              NetworkBorderGroup = "string",
              Ipv6Pool = "string"
            )
          ),
          CidrBlockAssociationSet = list(
            list(
              AssociationId = "string",
              CidrBlock = "string",
              CidrBlockState = list(
                State = "associating"|"associated"|"disassociating"|"disassociated"|"failing"|"failed",
                StatusMessage = "string"
              )
            )
          ),
          IsDefault = TRUE|FALSE,
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

    svc$describe_vpcs(
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      VpcIds = list(
        "string"
      ),
      DryRun = TRUE|FALSE,
      NextToken = "string",
      MaxResults = 123
    )

### Examples

    ## Not run: 
    # This example describes the specified VPC.
    svc$describe_vpcs(
      VpcIds = list(
        "vpc-a01106c2"
      )
    )

    ## End(Not run)
