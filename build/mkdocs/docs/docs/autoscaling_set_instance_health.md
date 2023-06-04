<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_set_instance_health</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the health status of the specified instance

### Description

Sets the health status of the specified instance.

For more information, see [Health checks for Auto Scaling
instances](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-health-checks.html)
in the *Amazon EC2 Auto Scaling User Guide*.

### Usage

    autoscaling_set_instance_health(InstanceId, HealthStatus,
      ShouldRespectGracePeriod)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_set_instance_health_:_InstanceId">InstanceId</code></td>
<td><p>[required] The ID of the instance.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_set_instance_health_:_HealthStatus">HealthStatus</code></td>
<td><p>[required] The health status of the instance. Set to
<code>Healthy</code> to have the instance remain in service. Set to
<code>Unhealthy</code> to have the instance be out of service. Amazon
EC2 Auto Scaling terminates and replaces the unhealthy
instance.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_set_instance_health_:_ShouldRespectGracePeriod">ShouldRespectGracePeriod</code></td>
<td><p>If the Auto Scaling group of the specified instance has a
<code>HealthCheckGracePeriod</code> specified for the group, by default,
this call respects the grace period. Set this to <code>False</code>, to
have the call not respect the grace period associated with the
group.</p>
<p>For more information about the health check grace period, see
<code>create_auto_scaling_group</code> in the <em>Amazon EC2 Auto
Scaling API Reference</em>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$set_instance_health(
      InstanceId = "string",
      HealthStatus = "string",
      ShouldRespectGracePeriod = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example sets the health status of the specified instance to
    # Unhealthy.
    svc$set_instance_health(
      HealthStatus = "Unhealthy",
      InstanceId = "i-93633f9b"
    )

    ## End(Not run)
