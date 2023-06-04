<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_vpc_classic_link</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the ClassicLink status of one or more VPCs

### Description

Describes the ClassicLink status of one or more VPCs.

We are retiring EC2-Classic. We recommend that you migrate from
EC2-Classic to a VPC. For more information, see [Migrate from
EC2-Classic to a
VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_describe_vpc_classic_link(Filters, DryRun, VpcIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_vpc_classic_link_:_Filters">Filters</code></td>
<td><p>One or more filters.</p>
<ul>
<li><p><code>is-classic-link-enabled</code> - Whether the VPC is enabled
for ClassicLink (<code>true</code> | <code>false</code>).</p></li>
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
<td><code id="ec2_describe_vpc_classic_link_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_describe_vpc_classic_link_:_VpcIds">VpcIds</code></td>
<td><p>One or more VPCs for which you want to describe the ClassicLink
status.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Vpcs = list(
        list(
          ClassicLinkEnabled = TRUE|FALSE,
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          VpcId = "string"
        )
      )
    )

### Request syntax

    svc$describe_vpc_classic_link(
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      DryRun = TRUE|FALSE,
      VpcIds = list(
        "string"
      )
    )
