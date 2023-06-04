<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elb_remove_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes one or more tags from the specified load balancer

### Description

Removes one or more tags from the specified load balancer.

### Usage

    elb_remove_tags(LoadBalancerNames, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elb_remove_tags_:_LoadBalancerNames">LoadBalancerNames</code></td>
<td><p>[required] The name of the load balancer. You can specify a
maximum of one load balancer name.</p></td>
</tr>
<tr class="even">
<td><code id="elb_remove_tags_:_Tags">Tags</code></td>
<td><p>[required] The list of tag keys to remove.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$remove_tags(
      LoadBalancerNames = list(
        "string"
      ),
      Tags = list(
        list(
          Key = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # This example removes the specified tag from the specified load balancer.
    svc$remove_tags(
      LoadBalancerNames = list(
        "my-load-balancer"
      ),
      Tags = list(
        list(
          Key = "project"
        )
      )
    )

    ## End(Not run)
