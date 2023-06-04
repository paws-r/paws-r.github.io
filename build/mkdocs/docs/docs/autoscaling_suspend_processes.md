<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_suspend_processes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Suspends the specified auto scaling processes, or all processes, for the specified Auto Scaling group

### Description

Suspends the specified auto scaling processes, or all processes, for the
specified Auto Scaling group.

If you suspend either the `Launch` or `Terminate` process types, it can
prevent other process types from functioning properly. For more
information, see [Suspending and resuming scaling
processes](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-suspend-resume-processes.html)
in the *Amazon EC2 Auto Scaling User Guide*.

To resume processes that have been suspended, call the
`resume_processes` API.

### Usage

    autoscaling_suspend_processes(AutoScalingGroupName, ScalingProcesses)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_suspend_processes_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>[required] The name of the Auto Scaling group.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_suspend_processes_:_ScalingProcesses">ScalingProcesses</code></td>
<td><p>One or more of the following processes:</p>
<ul>
<li><p><code>Launch</code></p></li>
<li><p><code>Terminate</code></p></li>
<li><p><code>AddToLoadBalancer</code></p></li>
<li><p><code>AlarmNotification</code></p></li>
<li><p><code>AZRebalance</code></p></li>
<li><p><code>HealthCheck</code></p></li>
<li><p><code>InstanceRefresh</code></p></li>
<li><p><code>ReplaceUnhealthy</code></p></li>
<li><p><code>ScheduledActions</code></p></li>
</ul>
<p>If you omit this property, all processes are specified.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$suspend_processes(
      AutoScalingGroupName = "string",
      ScalingProcesses = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This example suspends the specified scaling process for the specified
    # Auto Scaling group.
    svc$suspend_processes(
      AutoScalingGroupName = "my-auto-scaling-group",
      ScalingProcesses = list(
        "AlarmNotification"
      )
    )

    ## End(Not run)
