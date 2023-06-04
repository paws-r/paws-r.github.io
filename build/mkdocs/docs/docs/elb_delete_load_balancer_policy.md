<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elb_delete_load_balancer_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified policy from the specified load balancer

### Description

Deletes the specified policy from the specified load balancer. This
policy must not be enabled for any listeners.

### Usage

    elb_delete_load_balancer_policy(LoadBalancerName, PolicyName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elb_delete_load_balancer_policy_:_LoadBalancerName">LoadBalancerName</code></td>
<td><p>[required] The name of the load balancer.</p></td>
</tr>
<tr class="even">
<td><code
id="elb_delete_load_balancer_policy_:_PolicyName">PolicyName</code></td>
<td><p>[required] The name of the policy.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_load_balancer_policy(
      LoadBalancerName = "string",
      PolicyName = "string"
    )

### Examples

    ## Not run: 
    # This example deletes the specified policy from the specified load
    # balancer. The policy must not be enabled on any listener.
    svc$delete_load_balancer_policy(
      LoadBalancerName = "my-load-balancer",
      PolicyName = "my-duration-cookie-policy"
    )

    ## End(Not run)
