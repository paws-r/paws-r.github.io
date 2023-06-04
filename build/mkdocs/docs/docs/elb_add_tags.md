<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elb_add_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds the specified tags to the specified load balancer

### Description

Adds the specified tags to the specified load balancer. Each load
balancer can have a maximum of 10 tags.

Each tag consists of a key and an optional value. If a tag with the same
key is already associated with the load balancer, `add_tags` updates its
value.

For more information, see [Tag Your Classic Load
Balancer](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/add-remove-tags.html)
in the *Classic Load Balancers Guide*.

### Usage

    elb_add_tags(LoadBalancerNames, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elb_add_tags_:_LoadBalancerNames">LoadBalancerNames</code></td>
<td><p>[required] The name of the load balancer. You can specify one
load balancer only.</p></td>
</tr>
<tr class="even">
<td><code id="elb_add_tags_:_Tags">Tags</code></td>
<td><p>[required] The tags.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$add_tags(
      LoadBalancerNames = list(
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
    # This example adds two tags to the specified load balancer.
    svc$add_tags(
      LoadBalancerNames = list(
        "my-load-balancer"
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
