<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elbv2_register_targets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Registers the specified targets with the specified target group

### Description

Registers the specified targets with the specified target group.

If the target is an EC2 instance, it must be in the `running` state when
you register it.

By default, the load balancer routes requests to registered targets
using the protocol and port for the target group. Alternatively, you can
override the port for a target when you register it. You can register
each EC2 instance or IP address with the same target group multiple
times using different ports.

With a Network Load Balancer, you cannot register instances by instance
ID if they have the following instance types: C1, CC1, CC2, CG1, CG2,
CR1, CS1, G1, G2, HI1, HS1, M1, M2, M3, and T1. You can register
instances of these types by IP address.

### Usage

    elbv2_register_targets(TargetGroupArn, Targets)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elbv2_register_targets_:_TargetGroupArn">TargetGroupArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the target
group.</p></td>
</tr>
<tr class="even">
<td><code id="elbv2_register_targets_:_Targets">Targets</code></td>
<td><p>[required] The targets.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$register_targets(
      TargetGroupArn = "string",
      Targets = list(
        list(
          Id = "string",
          Port = 123,
          AvailabilityZone = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # This example registers the specified instances with the specified target
    # group.
    svc$register_targets(
      TargetGroupArn = "arn:aws:elasticloadbalancing:us-west-2:123456789012:tar...",
      Targets = list(
        list(
          Id = "i-80c8dd94"
        ),
        list(
          Id = "i-ceddcd4d"
        )
      )
    )

    # This example registers the specified instance with the specified target
    # group using multiple ports. This enables you to register ECS containers
    # on the same instance as targets in the target group.
    svc$register_targets(
      TargetGroupArn = "arn:aws:elasticloadbalancing:us-west-2:123456789012:tar...",
      Targets = list(
        list(
          Id = "i-80c8dd94",
          Port = 80L
        ),
        list(
          Id = "i-80c8dd94",
          Port = 766L
        )
      )
    )

    ## End(Not run)
