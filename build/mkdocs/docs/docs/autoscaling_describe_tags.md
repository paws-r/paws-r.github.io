<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_describe_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified tags

### Description

Describes the specified tags.

You can use filters to limit the results. For example, you can query for
the tags for a specific Auto Scaling group. You can specify multiple
values for a filter. A tag must match at least one of the specified
values for it to be included in the results.

You can also specify multiple filters. The result includes information
for a particular tag only if it matches all the filters. If there's no
match, no special message is returned.

For more information, see [Tag Auto Scaling groups and
instances](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-tagging.html)
in the *Amazon EC2 Auto Scaling User Guide*.

### Usage

    autoscaling_describe_tags(Filters, NextToken, MaxRecords)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="autoscaling_describe_tags_:_Filters">Filters</code></td>
<td><p>One or more filters to scope the tags to return. The maximum
number of filters per filter type (for example,
<code>auto-scaling-group</code>) is 1000.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_describe_tags_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_describe_tags_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of items to return with this call. The default
value is <code>50</code> and the maximum value is
<code>100</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Tags = list(
        list(
          ResourceId = "string",
          ResourceType = "string",
          Key = "string",
          Value = "string",
          PropagateAtLaunch = TRUE|FALSE
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_tags(
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      NextToken = "string",
      MaxRecords = 123
    )

### Examples

    ## Not run: 
    # This example describes the tags for the specified Auto Scaling group.
    svc$describe_tags(
      Filters = list(
        list(
          Name = "auto-scaling-group",
          Values = list(
            "my-auto-scaling-group"
          )
        )
      )
    )

    ## End(Not run)
