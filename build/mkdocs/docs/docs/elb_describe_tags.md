<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elb_describe_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the tags associated with the specified load balancers

### Description

Describes the tags associated with the specified load balancers.

### Usage

    elb_describe_tags(LoadBalancerNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elb_describe_tags_:_LoadBalancerNames">LoadBalancerNames</code></td>
<td><p>[required] The names of the load balancers.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TagDescriptions = list(
        list(
          LoadBalancerName = "string",
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

    svc$describe_tags(
      LoadBalancerNames = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This example describes the tags for the specified load balancer.
    svc$describe_tags(
      LoadBalancerNames = list(
        "my-load-balancer"
      )
    )

    ## End(Not run)
