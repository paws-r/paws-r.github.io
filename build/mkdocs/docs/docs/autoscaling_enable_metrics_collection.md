<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_enable_metrics_collection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables group metrics collection for the specified Auto Scaling group

### Description

Enables group metrics collection for the specified Auto Scaling group.

You can use these metrics to track changes in an Auto Scaling group and
to set alarms on threshold values. You can view group metrics using the
Amazon EC2 Auto Scaling console or the CloudWatch console. For more
information, see [Monitor CloudWatch metrics for your Auto Scaling
groups and
instances](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-cloudwatch-monitoring.html)
in the *Amazon EC2 Auto Scaling User Guide*.

### Usage

    autoscaling_enable_metrics_collection(AutoScalingGroupName, Metrics,
      Granularity)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_enable_metrics_collection_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>[required] The name of the Auto Scaling group.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_enable_metrics_collection_:_Metrics">Metrics</code></td>
<td><p>Identifies the metrics to enable.</p>
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
<p>If you specify <code>Granularity</code> and don't specify any
metrics, all metrics are enabled.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-cloudwatch-monitoring.html#as-group-metrics">Auto
Scaling group metrics</a> in the <em>Amazon EC2 Auto Scaling User
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_enable_metrics_collection_:_Granularity">Granularity</code></td>
<td><p>[required] The frequency at which Amazon EC2 Auto Scaling sends
aggregated data to CloudWatch. The only valid value is <code
style="white-space: pre;">⁠1Minute⁠</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$enable_metrics_collection(
      AutoScalingGroupName = "string",
      Metrics = list(
        "string"
      ),
      Granularity = "string"
    )

### Examples

    ## Not run: 
    # This example enables data collection for the specified Auto Scaling
    # group.
    svc$enable_metrics_collection(
      AutoScalingGroupName = "my-auto-scaling-group",
      Granularity = "1Minute"
    )

    ## End(Not run)
