<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elb_delete_load_balancer_listeners</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified listeners from the specified load balancer

### Description

Deletes the specified listeners from the specified load balancer.

### Usage

    elb_delete_load_balancer_listeners(LoadBalancerName, LoadBalancerPorts)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elb_delete_load_balancer_listeners_:_LoadBalancerName">LoadBalancerName</code></td>
<td><p>[required] The name of the load balancer.</p></td>
</tr>
<tr class="even">
<td><code
id="elb_delete_load_balancer_listeners_:_LoadBalancerPorts">LoadBalancerPorts</code></td>
<td><p>[required] The client port numbers of the listeners.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_load_balancer_listeners(
      LoadBalancerName = "string",
      LoadBalancerPorts = list(
        123
      )
    )

### Examples

    ## Not run: 
    # This example deletes the listener for the specified port from the
    # specified load balancer.
    svc$delete_load_balancer_listeners(
      LoadBalancerName = "my-load-balancer",
      LoadBalancerPorts = list(
        80L
      )
    )

    ## End(Not run)
