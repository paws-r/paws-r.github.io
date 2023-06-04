<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_put_auto_scaling_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates an automatic scaling policy for a core instance group or task instance group in an Amazon EMR cluster

### Description

Creates or updates an automatic scaling policy for a core instance group
or task instance group in an Amazon EMR cluster. The automatic scaling
policy defines how an instance group dynamically adds and terminates
Amazon EC2 instances in response to the value of a CloudWatch metric.

### Usage

    emr_put_auto_scaling_policy(ClusterId, InstanceGroupId,
      AutoScalingPolicy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emr_put_auto_scaling_policy_:_ClusterId">ClusterId</code></td>
<td><p>[required] Specifies the ID of a cluster. The instance group to
which the automatic scaling policy is applied is within this
cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="emr_put_auto_scaling_policy_:_InstanceGroupId">InstanceGroupId</code></td>
<td><p>[required] Specifies the ID of the instance group to which the
automatic scaling policy is applied.</p></td>
</tr>
<tr class="odd">
<td><code
id="emr_put_auto_scaling_policy_:_AutoScalingPolicy">AutoScalingPolicy</code></td>
<td><p>[required] Specifies the definition of the automatic scaling
policy.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ClusterId = "string",
      InstanceGroupId = "string",
      AutoScalingPolicy = list(
        Status = list(
          State = "PENDING"|"ATTACHING"|"ATTACHED"|"DETACHING"|"DETACHED"|"FAILED",
          StateChangeReason = list(
            Code = "USER_REQUEST"|"PROVISION_FAILURE"|"CLEANUP_FAILURE",
            Message = "string"
          )
        ),
        Constraints = list(
          MinCapacity = 123,
          MaxCapacity = 123
        ),
        Rules = list(
          list(
            Name = "string",
            Description = "string",
            Action = list(
              Market = "ON_DEMAND"|"SPOT",
              SimpleScalingPolicyConfiguration = list(
                AdjustmentType = "CHANGE_IN_CAPACITY"|"PERCENT_CHANGE_IN_CAPACITY"|"EXACT_CAPACITY",
                ScalingAdjustment = 123,
                CoolDown = 123
              )
            ),
            Trigger = list(
              CloudWatchAlarmDefinition = list(
                ComparisonOperator = "GREATER_THAN_OR_EQUAL"|"GREATER_THAN"|"LESS_THAN"|"LESS_THAN_OR_EQUAL",
                EvaluationPeriods = 123,
                MetricName = "string",
                Namespace = "string",
                Period = 123,
                Statistic = "SAMPLE_COUNT"|"AVERAGE"|"SUM"|"MINIMUM"|"MAXIMUM",
                Threshold = 123.0,
                Unit = "NONE"|"SECONDS"|"MICRO_SECONDS"|"MILLI_SECONDS"|"BYTES"|"KILO_BYTES"|"MEGA_BYTES"|"GIGA_BYTES"|"TERA_BYTES"|"BITS"|"KILO_BITS"|"MEGA_BITS"|"GIGA_BITS"|"TERA_BITS"|"PERCENT"|"COUNT"|"BYTES_PER_SECOND"|"KILO_BYTES_PER_SECOND"|"MEGA_BYTES_PER_SECOND"|"GIGA_BYTES_PER_SECOND"|"TERA_BYTES_PER_SECOND"|"BITS_PER_SECOND"|"KILO_BITS_PER_SECOND"|"MEGA_BITS_PER_SECOND"|"GIGA_BITS_PER_SECOND"|"TERA_BITS_PER_SECOND"|"COUNT_PER_SECOND",
                Dimensions = list(
                  list(
                    Key = "string",
                    Value = "string"
                  )
                )
              )
            )
          )
        )
      ),
      ClusterArn = "string"
    )

### Request syntax

    svc$put_auto_scaling_policy(
      ClusterId = "string",
      InstanceGroupId = "string",
      AutoScalingPolicy = list(
        Constraints = list(
          MinCapacity = 123,
          MaxCapacity = 123
        ),
        Rules = list(
          list(
            Name = "string",
            Description = "string",
            Action = list(
              Market = "ON_DEMAND"|"SPOT",
              SimpleScalingPolicyConfiguration = list(
                AdjustmentType = "CHANGE_IN_CAPACITY"|"PERCENT_CHANGE_IN_CAPACITY"|"EXACT_CAPACITY",
                ScalingAdjustment = 123,
                CoolDown = 123
              )
            ),
            Trigger = list(
              CloudWatchAlarmDefinition = list(
                ComparisonOperator = "GREATER_THAN_OR_EQUAL"|"GREATER_THAN"|"LESS_THAN"|"LESS_THAN_OR_EQUAL",
                EvaluationPeriods = 123,
                MetricName = "string",
                Namespace = "string",
                Period = 123,
                Statistic = "SAMPLE_COUNT"|"AVERAGE"|"SUM"|"MINIMUM"|"MAXIMUM",
                Threshold = 123.0,
                Unit = "NONE"|"SECONDS"|"MICRO_SECONDS"|"MILLI_SECONDS"|"BYTES"|"KILO_BYTES"|"MEGA_BYTES"|"GIGA_BYTES"|"TERA_BYTES"|"BITS"|"KILO_BITS"|"MEGA_BITS"|"GIGA_BITS"|"TERA_BITS"|"PERCENT"|"COUNT"|"BYTES_PER_SECOND"|"KILO_BYTES_PER_SECOND"|"MEGA_BYTES_PER_SECOND"|"GIGA_BYTES_PER_SECOND"|"TERA_BYTES_PER_SECOND"|"BITS_PER_SECOND"|"KILO_BITS_PER_SECOND"|"MEGA_BITS_PER_SECOND"|"GIGA_BITS_PER_SECOND"|"TERA_BITS_PER_SECOND"|"COUNT_PER_SECOND",
                Dimensions = list(
                  list(
                    Key = "string",
                    Value = "string"
                  )
                )
              )
            )
          )
        )
      )
    )
