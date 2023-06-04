<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_vpc_classic_link_dns_support</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## We are retiring EC2-Classic

### Description

We are retiring EC2-Classic. We recommend that you migrate from
EC2-Classic to a VPC. For more information, see [Migrate from
EC2-Classic to a
VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html)
in the *Amazon Elastic Compute Cloud User Guide*.

Describes the ClassicLink DNS support status of one or more VPCs. If
enabled, the DNS hostname of a linked EC2-Classic instance resolves to
its private IP address when addressed from an instance in the VPC to
which it's linked. Similarly, the DNS hostname of an instance in a VPC
resolves to its private IP address when addressed from a linked
EC2-Classic instance. For more information, see
[ClassicLink](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_describe_vpc_classic_link_dns_support(MaxResults, NextToken, VpcIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_vpc_classic_link_dns_support_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this request. To get
the next page of items, make another request with the token returned in
the output. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination">Pagination</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_vpc_classic_link_dns_support_:_NextToken">NextToken</code></td>
<td><p>The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_vpc_classic_link_dns_support_:_VpcIds">VpcIds</code></td>
<td><p>One or more VPC IDs.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      Vpcs = list(
        list(
          ClassicLinkDnsSupported = TRUE|FALSE,
          VpcId = "string"
        )
      )
    )

### Request syntax

    svc$describe_vpc_classic_link_dns_support(
      MaxResults = 123,
      NextToken = "string",
      VpcIds = list(
        "string"
      )
    )
