<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_put_scaling_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates a scaling policy for an Auto Scaling group

### Description

Creates or updates a scaling policy for an Auto Scaling group. Scaling
policies are used to scale an Auto Scaling group based on configurable
metrics. If no policies are defined, the dynamic scaling and predictive
scaling features are not used.

For more information about using dynamic scaling, see [Target tracking
scaling
policies](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-target-tracking.html)
and [Step and simple scaling
policies](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html)
in the *Amazon EC2 Auto Scaling User Guide*.

For more information about using predictive scaling, see [Predictive
scaling for Amazon EC2 Auto
Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-predictive-scaling.html)
in the *Amazon EC2 Auto Scaling User Guide*.

You can view the scaling policies for an Auto Scaling group using the
`describe_policies` API call. If you are no longer using a scaling
policy, you can delete it by calling the `delete_policy` API.

### Usage

    autoscaling_put_scaling_policy(AutoScalingGroupName, PolicyName,
      PolicyType, AdjustmentType, MinAdjustmentStep, MinAdjustmentMagnitude,
      ScalingAdjustment, Cooldown, MetricAggregationType, StepAdjustments,
      EstimatedInstanceWarmup, TargetTrackingConfiguration, Enabled,
      PredictiveScalingConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_put_scaling_policy_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>[required] The name of the Auto Scaling group.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_put_scaling_policy_:_PolicyName">PolicyName</code></td>
<td><p>[required] The name of the policy.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_put_scaling_policy_:_PolicyType">PolicyType</code></td>
<td><p>One of the following policy types:</p>
<ul>
<li><p><code>TargetTrackingScaling</code></p></li>
<li><p><code>StepScaling</code></p></li>
<li><p><code>SimpleScaling</code> (default)</p></li>
<li><p><code>PredictiveScaling</code></p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_put_scaling_policy_:_AdjustmentType">AdjustmentType</code></td>
<td><p>Specifies how the scaling adjustment is interpreted (for example,
an absolute number or a percentage). The valid values are
<code>ChangeInCapacity</code>, <code>ExactCapacity</code>, and
<code>PercentChangeInCapacity</code>.</p>
<p>Required if the policy type is <code>StepScaling</code> or
<code>SimpleScaling</code>. For more information, see <a
href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html#as-scaling-adjustment">Scaling
adjustment types</a> in the <em>Amazon EC2 Auto Scaling User
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_put_scaling_policy_:_MinAdjustmentStep">MinAdjustmentStep</code></td>
<td><p>Available for backward compatibility. Use
<code>MinAdjustmentMagnitude</code> instead.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_put_scaling_policy_:_MinAdjustmentMagnitude">MinAdjustmentMagnitude</code></td>
<td><p>The minimum value to scale by when the adjustment type is
<code>PercentChangeInCapacity</code>. For example, suppose that you
create a step scaling policy to scale out an Auto Scaling group by 25
percent and you specify a <code>MinAdjustmentMagnitude</code> of 2. If
the group has 4 instances and the scaling policy is performed, 25
percent of 4 is 1. However, because you specified a
<code>MinAdjustmentMagnitude</code> of 2, Amazon EC2 Auto Scaling scales
out the group by 2 instances.</p>
<p>Valid only if the policy type is <code>StepScaling</code> or
<code>SimpleScaling</code>. For more information, see <a
href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html#as-scaling-adjustment">Scaling
adjustment types</a> in the <em>Amazon EC2 Auto Scaling User
Guide</em>.</p>
<p>Some Auto Scaling groups use instance weights. In this case, set the
<code>MinAdjustmentMagnitude</code> to a value that is at least as large
as your largest instance weight.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_put_scaling_policy_:_ScalingAdjustment">ScalingAdjustment</code></td>
<td><p>The amount by which to scale, based on the specified adjustment
type. A positive value adds to the current capacity while a negative
number removes from the current capacity. For exact capacity, you must
specify a positive value.</p>
<p>Required if the policy type is <code>SimpleScaling</code>. (Not used
with any other policy type.)</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_put_scaling_policy_:_Cooldown">Cooldown</code></td>
<td><p>A cooldown period, in seconds, that applies to a specific simple
scaling policy. When a cooldown period is specified here, it overrides
the default cooldown.</p>
<p>Valid only if the policy type is <code>SimpleScaling</code>. For more
information, see <a
href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-scaling-cooldowns.html">Scaling
cooldowns for Amazon EC2 Auto Scaling</a> in the <em>Amazon EC2 Auto
Scaling User Guide</em>.</p>
<p>Default: None</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_put_scaling_policy_:_MetricAggregationType">MetricAggregationType</code></td>
<td><p>The aggregation type for the CloudWatch metrics. The valid values
are <code>Minimum</code>, <code>Maximum</code>, and
<code>Average</code>. If the aggregation type is null, the value is
treated as <code>Average</code>.</p>
<p>Valid only if the policy type is <code>StepScaling</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_put_scaling_policy_:_StepAdjustments">StepAdjustments</code></td>
<td><p>A set of adjustments that enable you to scale based on the size
of the alarm breach.</p>
<p>Required if the policy type is <code>StepScaling</code>. (Not used
with any other policy type.)</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_put_scaling_policy_:_EstimatedInstanceWarmup">EstimatedInstanceWarmup</code></td>
<td><p><em>Not needed if the default instance warmup is defined for the
group.</em></p>
<p>The estimated time, in seconds, until a newly launched instance can
contribute to the CloudWatch metrics. This warm-up period applies to
instances launched due to a specific target tracking or step scaling
policy. When a warm-up period is specified here, it overrides the
default instance warmup.</p>
<p>Valid only if the policy type is <code>TargetTrackingScaling</code>
or <code>StepScaling</code>.</p>
<p>The default is to use the value for the default instance warmup
defined for the group. If default instance warmup is null, then
<code>EstimatedInstanceWarmup</code> falls back to the value of default
cooldown.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_put_scaling_policy_:_TargetTrackingConfiguration">TargetTrackingConfiguration</code></td>
<td><p>A target tracking scaling policy. Provides support for predefined
or custom metrics.</p>
<p>The following predefined metrics are available:</p>
<ul>
<li><p><code>ASGAverageCPUUtilization</code></p></li>
<li><p><code>ASGAverageNetworkIn</code></p></li>
<li><p><code>ASGAverageNetworkOut</code></p></li>
<li><p><code>ALBRequestCountPerTarget</code></p></li>
</ul>
<p>If you specify <code>ALBRequestCountPerTarget</code> for the metric,
you must specify the <code>ResourceLabel</code> property with the
<code>PredefinedMetricSpecification</code>.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_TargetTrackingConfiguration.html">TargetTrackingConfiguration</a>
in the <em>Amazon EC2 Auto Scaling API Reference</em>.</p>
<p>Required if the policy type is
<code>TargetTrackingScaling</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_put_scaling_policy_:_Enabled">Enabled</code></td>
<td><p>Indicates whether the scaling policy is enabled or disabled. The
default is enabled. For more information, see <a
href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-enable-disable-scaling-policy.html">Disabling
a scaling policy for an Auto Scaling group</a> in the <em>Amazon EC2
Auto Scaling User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_put_scaling_policy_:_PredictiveScalingConfiguration">PredictiveScalingConfiguration</code></td>
<td><p>A predictive scaling policy. Provides support for predefined and
custom metrics.</p>
<p>Predefined metrics include CPU utilization, network in/out, and the
Application Load Balancer request count.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_PredictiveScalingConfiguration.html">PredictiveScalingConfiguration</a>
in the <em>Amazon EC2 Auto Scaling API Reference</em>.</p>
<p>Required if the policy type is
<code>PredictiveScaling</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PolicyARN = "string",
      Alarms = list(
        list(
          AlarmName = "string",
          AlarmARN = "string"
        )
      )
    )

### Request syntax

    svc$put_scaling_policy(
      AutoScalingGroupName = "string",
      PolicyName = "string",
      PolicyType = "string",
      AdjustmentType = "string",
      MinAdjustmentStep = 123,
      MinAdjustmentMagnitude = 123,
      ScalingAdjustment = 123,
      Cooldown = 123,
      MetricAggregationType = "string",
      StepAdjustments = list(
        list(
          MetricIntervalLowerBound = 123.0,
          MetricIntervalUpperBound = 123.0,
          ScalingAdjustment = 123
        )
      ),
      EstimatedInstanceWarmup = 123,
      TargetTrackingConfiguration = list(
        PredefinedMetricSpecification = list(
          PredefinedMetricType = "ASGAverageCPUUtilization"|"ASGAverageNetworkIn"|"ASGAverageNetworkOut"|"ALBRequestCountPerTarget",
          ResourceLabel = "string"
        ),
        CustomizedMetricSpecification = list(
          MetricName = "string",
          Namespace = "string",
          Dimensions = list(
            list(
              Name = "string",
              Value = "string"
            )
          ),
          Statistic = "Average"|"Minimum"|"Maximum"|"SampleCount"|"Sum",
          Unit = "string",
          Metrics = list(
            list(
              Id = "string",
              Expression = "string",
              MetricStat = list(
                Metric = list(
                  Namespace = "string",
                  MetricName = "string",
                  Dimensions = list(
                    list(
                      Name = "string",
                      Value = "string"
                    )
                  )
                ),
                Stat = "string",
                Unit = "string"
              ),
              Label = "string",
              ReturnData = TRUE|FALSE
            )
          )
        ),
        TargetValue = 123.0,
        DisableScaleIn = TRUE|FALSE
      ),
      Enabled = TRUE|FALSE,
      PredictiveScalingConfiguration = list(
        MetricSpecifications = list(
          list(
            TargetValue = 123.0,
            PredefinedMetricPairSpecification = list(
              PredefinedMetricType = "ASGCPUUtilization"|"ASGNetworkIn"|"ASGNetworkOut"|"ALBRequestCount",
              ResourceLabel = "string"
            ),
            PredefinedScalingMetricSpecification = list(
              PredefinedMetricType = "ASGAverageCPUUtilization"|"ASGAverageNetworkIn"|"ASGAverageNetworkOut"|"ALBRequestCountPerTarget",
              ResourceLabel = "string"
            ),
            PredefinedLoadMetricSpecification = list(
              PredefinedMetricType = "ASGTotalCPUUtilization"|"ASGTotalNetworkIn"|"ASGTotalNetworkOut"|"ALBTargetGroupRequestCount",
              ResourceLabel = "string"
            ),
            CustomizedScalingMetricSpecification = list(
              MetricDataQueries = list(
                list(
                  Id = "string",
                  Expression = "string",
                  MetricStat = list(
                    Metric = list(
                      Namespace = "string",
                      MetricName = "string",
                      Dimensions = list(
                        list(
                          Name = "string",
                          Value = "string"
                        )
                      )
                    ),
                    Stat = "string",
                    Unit = "string"
                  ),
                  Label = "string",
                  ReturnData = TRUE|FALSE
                )
              )
            ),
            CustomizedLoadMetricSpecification = list(
              MetricDataQueries = list(
                list(
                  Id = "string",
                  Expression = "string",
                  MetricStat = list(
                    Metric = list(
                      Namespace = "string",
                      MetricName = "string",
                      Dimensions = list(
                        list(
                          Name = "string",
                          Value = "string"
                        )
                      )
                    ),
                    Stat = "string",
                    Unit = "string"
                  ),
                  Label = "string",
                  ReturnData = TRUE|FALSE
                )
              )
            ),
            CustomizedCapacityMetricSpecification = list(
              MetricDataQueries = list(
                list(
                  Id = "string",
                  Expression = "string",
                  MetricStat = list(
                    Metric = list(
                      Namespace = "string",
                      MetricName = "string",
                      Dimensions = list(
                        list(
                          Name = "string",
                          Value = "string"
                        )
                      )
                    ),
                    Stat = "string",
                    Unit = "string"
                  ),
                  Label = "string",
                  ReturnData = TRUE|FALSE
                )
              )
            )
          )
        ),
        Mode = "ForecastAndScale"|"ForecastOnly",
        SchedulingBufferTime = 123,
        MaxCapacityBreachBehavior = "HonorMaxCapacity"|"IncreaseMaxCapacity",
        MaxCapacityBuffer = 123
      )
    )

### Examples

    ## Not run: 
    # This example adds the specified policy to the specified Auto Scaling
    # group.
    svc$put_scaling_policy(
      AutoScalingGroupName = "my-auto-scaling-group",
      PolicyName = "alb1000-target-tracking-scaling-policy",
      PolicyType = "TargetTrackingScaling",
      TargetTrackingConfiguration = list(
        PredefinedMetricSpecification = list(
          PredefinedMetricType = "ALBRequestCountPerTarget",
          ResourceLabel = "app/my-alb/778d41231b141a0f/targetgroup/my-alb-targe..."
        ),
        TargetValue = 1000
      )
    )

    ## End(Not run)
