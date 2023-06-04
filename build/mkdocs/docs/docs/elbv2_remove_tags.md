<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elbv2_remove_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the specified tags from the specified Elastic Load Balancing resources

### Description

Removes the specified tags from the specified Elastic Load Balancing
resources. You can remove the tags for one or more Application Load
Balancers, Network Load Balancers, Gateway Load Balancers, target
groups, listeners, or rules.

### Usage

    elbv2_remove_tags(ResourceArns, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="elbv2_remove_tags_:_ResourceArns">ResourceArns</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
resource.</p></td>
</tr>
<tr class="even">
<td><code id="elbv2_remove_tags_:_TagKeys">TagKeys</code></td>
<td><p>[required] The tag keys for the tags to remove.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$remove_tags(
      ResourceArns = list(
        "string"
      ),
      TagKeys = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This example removes the specified tags from the specified load
    # balancer.
    svc$remove_tags(
      ResourceArns = list(
        "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/m..."
      ),
      TagKeys = list(
        "project",
        "department"
      )
    )

    ## End(Not run)
