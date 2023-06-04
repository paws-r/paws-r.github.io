<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elbv2_add_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds the specified tags to the specified Elastic Load Balancing resource

### Description

Adds the specified tags to the specified Elastic Load Balancing
resource. You can tag your Application Load Balancers, Network Load
Balancers, Gateway Load Balancers, target groups, listeners, and rules.

Each tag consists of a key and an optional value. If a resource already
has a tag with the same key, `add_tags` updates its value.

### Usage

    elbv2_add_tags(ResourceArns, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="elbv2_add_tags_:_ResourceArns">ResourceArns</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
resource.</p></td>
</tr>
<tr class="even">
<td><code id="elbv2_add_tags_:_Tags">Tags</code></td>
<td><p>[required] The tags.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$add_tags(
      ResourceArns = list(
        "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # This example adds the specified tags to the specified load balancer.
    svc$add_tags(
      ResourceArns = list(
        "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/m..."
      ),
      Tags = list(
        list(
          Key = "project",
          Value = "lima"
        ),
        list(
          Key = "department",
          Value = "digital-media"
        )
      )
    )

    ## End(Not run)
