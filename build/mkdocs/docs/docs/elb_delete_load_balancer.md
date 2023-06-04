<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elb_delete_load_balancer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified load balancer

### Description

Deletes the specified load balancer.

If you are attempting to recreate a load balancer, you must reconfigure
all settings. The DNS name associated with a deleted load balancer are
no longer usable. The name and associated DNS record of the deleted load
balancer no longer exist and traffic sent to any of its IP addresses is
no longer delivered to your instances.

If the load balancer does not exist or has already been deleted, the
call to `delete_load_balancer` still succeeds.

### Usage

    elb_delete_load_balancer(LoadBalancerName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elb_delete_load_balancer_:_LoadBalancerName">LoadBalancerName</code></td>
<td><p>[required] The name of the load balancer.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_load_balancer(
      LoadBalancerName = "string"
    )

### Examples

    ## Not run: 
    # This example deletes the specified load balancer.
    svc$delete_load_balancer(
      LoadBalancerName = "my-load-balancer"
    )

    ## End(Not run)
