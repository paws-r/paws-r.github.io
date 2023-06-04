<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_execute_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Executes the specified policy

### Description

Executes the specified policy. This can be useful for testing the design
of your scaling policy.

### Usage

    autoscaling_execute_policy(AutoScalingGroupName, PolicyName,
      HonorCooldown, MetricValue, BreachThreshold)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_execute_policy_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>The name of the Auto Scaling group.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_execute_policy_:_PolicyName">PolicyName</code></td>
<td><p>[required] The name or ARN of the policy.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_execute_policy_:_HonorCooldown">HonorCooldown</code></td>
<td><p>Indicates whether Amazon EC2 Auto Scaling waits for the cooldown
period to complete before executing the policy.</p>
<p>Valid only if the policy type is <code>SimpleScaling</code>. For more
information, see <a
href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-scaling-cooldowns.html">Scaling
cooldowns for Amazon EC2 Auto Scaling</a> in the <em>Amazon EC2 Auto
Scaling User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_execute_policy_:_MetricValue">MetricValue</code></td>
<td><p>The metric value to compare to <code>BreachThreshold</code>. This
enables you to execute a policy of type <code>StepScaling</code> and
determine which step adjustment to use. For example, if the breach
threshold is 50 and you want to use a step adjustment with a lower bound
of 0 and an upper bound of 10, you can set the metric value to 59.</p>
<p>If you specify a metric value that doesn't correspond to a step
adjustment for the policy, the call returns an error.</p>
<p>Required if the policy type is <code>StepScaling</code> and not
supported otherwise.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_execute_policy_:_BreachThreshold">BreachThreshold</code></td>
<td><p>The breach threshold for the alarm.</p>
<p>Required if the policy type is <code>StepScaling</code> and not
supported otherwise.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$execute_policy(
      AutoScalingGroupName = "string",
      PolicyName = "string",
      HonorCooldown = TRUE|FALSE,
      MetricValue = 123.0,
      BreachThreshold = 123.0
    )

### Examples

    ## Not run: 
    # This example executes the specified policy.
    svc$execute_policy(
      AutoScalingGroupName = "my-auto-scaling-group",
      BreachThreshold = 50,
      MetricValue = 59,
      PolicyName = "my-step-scale-out-policy"
    )

    ## End(Not run)
