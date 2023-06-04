<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_placement_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified placement groups or all of your placement groups

### Description

Describes the specified placement groups or all of your placement
groups. For more information, see [Placement
groups](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html)
in the *Amazon EC2 User Guide*.

### Usage

    ec2_describe_placement_groups(Filters, DryRun, GroupNames, GroupIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_placement_groups_:_Filters">Filters</code></td>
<td><p>The filters.</p>
<ul>
<li><p><code>group-name</code> - The name of the placement
group.</p></li>
<li><p><code>group-arn</code> - The Amazon Resource Name (ARN) of the
placement group.</p></li>
<li><p><code>spread-level</code> - The spread level for the placement
group (<code>host</code> | <code>rack</code>).</p></li>
<li><p><code>state</code> - The state of the placement group
(<code>pending</code> | <code>available</code> | <code>deleting</code> |
<code>deleted</code>).</p></li>
<li><p><code>strategy</code> - The strategy of the placement group
(<code>cluster</code> | <code>spread</code> |
<code>partition</code>).</p></li>
<li><p><code style="white-space: pre;">⁠tag:&lt;key&gt;⁠</code> - The
key/value combination of a tag assigned to the resource. Use the tag key
in the filter name and the tag value as the filter value. For example,
to find all resources that have a tag with the key <code>Owner</code>
and the value <code>TeamA</code>, specify <code>tag:Owner</code> for the
filter name and <code>TeamA</code> for the filter value.</p></li>
<li><p><code>tag-key</code> - The key of a tag assigned to the resource.
Use this filter to find all resources that have a tag with a specific
key, regardless of the tag value.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="ec2_describe_placement_groups_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_placement_groups_:_GroupNames">GroupNames</code></td>
<td><p>The names of the placement groups.</p>
<p>Default: Describes all your placement groups, or only those otherwise
specified.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_placement_groups_:_GroupIds">GroupIds</code></td>
<td><p>The IDs of the placement groups.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PlacementGroups = list(
        list(
          GroupName = "string",
          State = "pending"|"available"|"deleting"|"deleted",
          Strategy = "cluster"|"spread"|"partition",
          PartitionCount = 123,
          GroupId = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          GroupArn = "string",
          SpreadLevel = "host"|"rack"
        )
      )
    )

### Request syntax

    svc$describe_placement_groups(
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      DryRun = TRUE|FALSE,
      GroupNames = list(
        "string"
      ),
      GroupIds = list(
        "string"
      )
    )
