<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_classic_link_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more of your linked EC2-Classic instances

### Description

Describes one or more of your linked EC2-Classic instances. This request
only returns information about EC2-Classic instances linked to a VPC
through ClassicLink. You cannot use this request to return information
about other instances.

We are retiring EC2-Classic. We recommend that you migrate from
EC2-Classic to a VPC. For more information, see [Migrate from
EC2-Classic to a
VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_describe_classic_link_instances(Filters, DryRun, InstanceIds,
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
id="ec2_describe_classic_link_instances_:_Filters">Filters</code></td>
<td><p>One or more filters.</p>
<ul>
<li><p><code>group-id</code> - The ID of a VPC security group that's
associated with the instance.</p></li>
<li><p><code>instance-id</code> - The ID of the instance.</p></li>
<li><p><code>tag</code>:\&lt;key\&gt; - The key/value combination of a
tag assigned to the resource. Use the tag key in the filter name and the
tag value as the filter value. For example, to find all resources that
have a tag with the key <code>Owner</code> and the value
<code>TeamA</code>, specify <code>tag:Owner</code> for the filter name
and <code>TeamA</code> for the filter value.</p></li>
<li><p><code>tag-key</code> - The key of a tag assigned to the resource.
Use this filter to find all resources assigned a tag with a specific
key, regardless of the tag value.</p></li>
<li><p><code>vpc-id</code> - The ID of the VPC to which the instance is
linked.</p>
<p><code>vpc-id</code> - The ID of the VPC that the instance is linked
to.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_classic_link_instances_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_classic_link_instances_:_InstanceIds">InstanceIds</code></td>
<td><p>One or more instance IDs. Must be instances linked to a VPC
through ClassicLink.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_classic_link_instances_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this request. To get
the next page of items, make another request with the token returned in
the output. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination">Pagination</a>.</p>
<p>Constraint: If the value is greater than 1000, we return only 1000
items.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_classic_link_instances_:_NextToken">NextToken</code></td>
<td><p>The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Instances = list(
        list(
          Groups = list(
            list(
              GroupName = "string",
              GroupId = "string"
            )
          ),
          InstanceId = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          VpcId = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_classic_link_instances(
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      DryRun = TRUE|FALSE,
      InstanceIds = list(
        "string"
      ),
      MaxResults = 123,
      NextToken = "string"
    )
