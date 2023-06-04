<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elbv2_describe_target_health</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the health of the specified targets or all of your targets

### Description

Describes the health of the specified targets or all of your targets.

### Usage

    elbv2_describe_target_health(TargetGroupArn, Targets)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elbv2_describe_target_health_:_TargetGroupArn">TargetGroupArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the target
group.</p></td>
</tr>
<tr class="even">
<td><code
id="elbv2_describe_target_health_:_Targets">Targets</code></td>
<td><p>The targets.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TargetHealthDescriptions = list(
        list(
          Target = list(
            Id = "string",
            Port = 123,
            AvailabilityZone = "string"
          ),
          HealthCheckPort = "string",
          TargetHealth = list(
            State = "initial"|"healthy"|"unhealthy"|"unused"|"draining"|"unavailable",
            Reason = "Elb.RegistrationInProgress"|"Elb.InitialHealthChecking"|"Target.ResponseCodeMismatch"|"Target.Timeout"|"Target.FailedHealthChecks"|"Target.NotRegistered"|"Target.NotInUse"|"Target.DeregistrationInProgress"|"Target.InvalidState"|"Target.IpUnusable"|"Target.HealthCheckDisabled"|"Elb.InternalError",
            Description = "string"
          )
        )
      )
    )

### Request syntax

    svc$describe_target_health(
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
    # This example describes the health of the targets for the specified
    # target group. One target is healthy but the other is not specified in an
    # action, so it can't receive traffic from the load balancer.
    svc$describe_target_health(
      TargetGroupArn = "arn:aws:elasticloadbalancing:us-west-2:123456789012:tar..."
    )

    # This example describes the health of the specified target. This target
    # is healthy.
    svc$describe_target_health(
      TargetGroupArn = "arn:aws:elasticloadbalancing:us-west-2:123456789012:tar...",
      Targets = list(
        list(
          Id = "i-0f76fade",
          Port = 80L
        )
      )
    )

    ## End(Not run)
