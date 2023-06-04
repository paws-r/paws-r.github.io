<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elbv2_deregister_targets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deregisters the specified targets from the specified target group

### Description

Deregisters the specified targets from the specified target group. After
the targets are deregistered, they no longer receive traffic from the
load balancer.

### Usage

    elbv2_deregister_targets(TargetGroupArn, Targets)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elbv2_deregister_targets_:_TargetGroupArn">TargetGroupArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the target
group.</p></td>
</tr>
<tr class="even">
<td><code id="elbv2_deregister_targets_:_Targets">Targets</code></td>
<td><p>[required] The targets. If you specified a port override when you
registered a target, you must specify both the target ID and the port
when you deregister it.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$deregister_targets(
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
    # This example deregisters the specified instance from the specified
    # target group.
    svc$deregister_targets(
      TargetGroupArn = "arn:aws:elasticloadbalancing:us-west-2:123456789012:tar...",
      Targets = list(
        list(
          Id = "i-0f76fade"
        )
      )
    )

    ## End(Not run)
