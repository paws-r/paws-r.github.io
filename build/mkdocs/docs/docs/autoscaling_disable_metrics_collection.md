<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_disable_metrics_collection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disables group metrics collection for the specified Auto Scaling group

### Description

Disables group metrics collection for the specified Auto Scaling group.

### Usage

    autoscaling_disable_metrics_collection(AutoScalingGroupName, Metrics)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_disable_metrics_collection_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>[required] The name of the Auto Scaling group.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_disable_metrics_collection_:_Metrics">Metrics</code></td>
<td><p>Identifies the metrics to disable.</p>
<p>You can specify one or more of the following metrics:</p>
<ul>
<li><p><code>GroupMinSize</code></p></li>
<li><p><code>GroupMaxSize</code></p></li>
<li><p><code>GroupDesiredCapacity</code></p></li>
<li><p><code>GroupInServiceInstances</code></p></li>
<li><p><code>GroupPendingInstances</code></p></li>
<li><p><code>GroupStandbyInstances</code></p></li>
<li><p><code>GroupTerminatingInstances</code></p></li>
<li><p><code>GroupTotalInstances</code></p></li>
<li><p><code>GroupInServiceCapacity</code></p></li>
<li><p><code>GroupPendingCapacity</code></p></li>
<li><p><code>GroupStandbyCapacity</code></p></li>
<li><p><code>GroupTerminatingCapacity</code></p></li>
<li><p><code>GroupTotalCapacity</code></p></li>
<li><p><code>WarmPoolDesiredCapacity</code></p></li>
<li><p><code>WarmPoolWarmedCapacity</code></p></li>
<li><p><code>WarmPoolPendingCapacity</code></p></li>
<li><p><code>WarmPoolTerminatingCapacity</code></p></li>
<li><p><code>WarmPoolTotalCapacity</code></p></li>
<li><p><code>GroupAndWarmPoolDesiredCapacity</code></p></li>
<li><p><code>GroupAndWarmPoolTotalCapacity</code></p></li>
</ul>
<p>If you omit this property, all metrics are disabled.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-cloudwatch-monitoring.html#as-group-metrics">Auto
Scaling group metrics</a> in the <em>Amazon EC2 Auto Scaling User
Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disable_metrics_collection(
      AutoScalingGroupName = "string",
      Metrics = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This example disables collecting data for the GroupDesiredCapacity
    # metric for the specified Auto Scaling group.
    svc$disable_metrics_collection(
      AutoScalingGroupName = "my-auto-scaling-group",
      Metrics = list(
        "GroupDesiredCapacity"
      )
    )

    ## End(Not run)
