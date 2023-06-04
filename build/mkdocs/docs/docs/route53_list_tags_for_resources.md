<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_list_tags_for_resources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists tags for up to 10 health checks or hosted zones

### Description

Lists tags for up to 10 health checks or hosted zones.

For information about using tags for cost allocation, see [Using Cost
Allocation
Tags](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html)
in the *Billing and Cost Management User Guide*.

### Usage

    route53_list_tags_for_resources(ResourceType, ResourceIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53_list_tags_for_resources_:_ResourceType">ResourceType</code></td>
<td><p>[required] The type of the resources.</p>
<ul>
<li><p>The resource type for health checks is
<code>healthcheck</code>.</p></li>
<li><p>The resource type for hosted zones is
<code>hostedzone</code>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="route53_list_tags_for_resources_:_ResourceIds">ResourceIds</code></td>
<td><p>[required] A complex type that contains the ResourceId element
for each resource for which you want to get a list of tags.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceTagSets = list(
        list(
          ResourceType = "healthcheck"|"hostedzone",
          ResourceId = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$list_tags_for_resources(
      ResourceType = "healthcheck"|"hostedzone",
      ResourceIds = list(
        "string"
      )
    )
