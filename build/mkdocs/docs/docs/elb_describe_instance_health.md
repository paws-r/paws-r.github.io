<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elb_describe_instance_health</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the state of the specified instances with respect to the specified load balancer

### Description

Describes the state of the specified instances with respect to the
specified load balancer. If no instances are specified, the call
describes the state of all instances that are currently registered with
the load balancer. If instances are specified, their state is returned
even if they are no longer registered with the load balancer. The state
of terminated instances is not returned.

### Usage

    elb_describe_instance_health(LoadBalancerName, Instances)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elb_describe_instance_health_:_LoadBalancerName">LoadBalancerName</code></td>
<td><p>[required] The name of the load balancer.</p></td>
</tr>
<tr class="even">
<td><code
id="elb_describe_instance_health_:_Instances">Instances</code></td>
<td><p>The IDs of the instances.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InstanceStates = list(
        list(
          InstanceId = "string",
          State = "string",
          ReasonCode = "string",
          Description = "string"
        )
      )
    )

### Request syntax

    svc$describe_instance_health(
      LoadBalancerName = "string",
      Instances = list(
        list(
          InstanceId = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # This example describes the health of the instances for the specified
    # load balancer.
    svc$describe_instance_health(
      LoadBalancerName = "my-load-balancer"
    )

    ## End(Not run)
