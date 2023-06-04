<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists tags for one health check or hosted zone

### Description

Lists tags for one health check or hosted zone.

For information about using tags for cost allocation, see [Using Cost
Allocation
Tags](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html)
in the *Billing and Cost Management User Guide*.

### Usage

    route53_list_tags_for_resource(ResourceType, ResourceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53_list_tags_for_resource_:_ResourceType">ResourceType</code></td>
<td><p>[required] The type of the resource.</p>
<ul>
<li><p>The resource type for health checks is
<code>healthcheck</code>.</p></li>
<li><p>The resource type for hosted zones is
<code>hostedzone</code>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="route53_list_tags_for_resource_:_ResourceId">ResourceId</code></td>
<td><p>[required] The ID of the resource for which you want to retrieve
tags.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceTagSet = list(
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

### Request syntax

    svc$list_tags_for_resource(
      ResourceType = "healthcheck"|"hostedzone",
      ResourceId = "string"
    )
