<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_change_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds, edits, or deletes tags for a health check or a hosted zone

### Description

Adds, edits, or deletes tags for a health check or a hosted zone.

For information about using tags for cost allocation, see [Using Cost
Allocation
Tags](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html)
in the *Billing and Cost Management User Guide*.

### Usage

    route53_change_tags_for_resource(ResourceType, ResourceId, AddTags,
      RemoveTagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53_change_tags_for_resource_:_ResourceType">ResourceType</code></td>
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
id="route53_change_tags_for_resource_:_ResourceId">ResourceId</code></td>
<td><p>[required] The ID of the resource for which you want to add,
change, or delete tags.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53_change_tags_for_resource_:_AddTags">AddTags</code></td>
<td><p>A complex type that contains a list of the tags that you want to
add to the specified health check or hosted zone and/or the tags that
you want to edit <code>Value</code> for.</p>
<p>You can add a maximum of 10 tags to a health check or a hosted
zone.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_change_tags_for_resource_:_RemoveTagKeys">RemoveTagKeys</code></td>
<td><p>A complex type that contains a list of the tags that you want to
delete from the specified health check or hosted zone. You can specify
up to 10 keys.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$change_tags_for_resource(
      ResourceType = "healthcheck"|"hostedzone",
      ResourceId = "string",
      AddTags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      RemoveTagKeys = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # The following example adds two tags and removes one tag from the hosted
    # zone with ID Z3M3LMPEXAMPLE.
    svc$change_tags_for_resource(
      AddTags = list(
        list(
          Key = "apex",
          Value = "3874"
        ),
        list(
          Key = "acme",
          Value = "4938"
        )
      ),
      RemoveTagKeys = list(
        "Nadir"
      ),
      ResourceId = "Z3M3LMPEXAMPLE",
      ResourceType = "hostedzone"
    )

    ## End(Not run)
