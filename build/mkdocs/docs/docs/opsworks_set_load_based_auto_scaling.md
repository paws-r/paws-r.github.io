<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_set_load_based_auto_scaling</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Specify the load-based auto scaling configuration for a specified layer

### Description

Specify the load-based auto scaling configuration for a specified layer.
For more information, see [Managing Load with Time-based and Load-based
Instances](https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-autoscaling.html).

To use load-based auto scaling, you must create a set of load-based auto
scaling instances. Load-based auto scaling operates only on the
instances from that set, so you must ensure that you have created enough
instances to handle the maximum anticipated load.

**Required Permissions**: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user permissions,
see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_set_load_based_auto_scaling(LayerId, Enable, UpScaling,
      DownScaling)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworks_set_load_based_auto_scaling_:_LayerId">LayerId</code></td>
<td><p>[required] The layer ID.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_set_load_based_auto_scaling_:_Enable">Enable</code></td>
<td><p>Enables load-based auto scaling for the layer.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_set_load_based_auto_scaling_:_UpScaling">UpScaling</code></td>
<td><p>An <code>AutoScalingThresholds</code> object with the upscaling
threshold configuration. If the load exceeds these thresholds for a
specified amount of time, AWS OpsWorks Stacks starts a specified number
of instances.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_set_load_based_auto_scaling_:_DownScaling">DownScaling</code></td>
<td><p>An <code>AutoScalingThresholds</code> object with the downscaling
threshold configuration. If the load falls below these thresholds for a
specified amount of time, AWS OpsWorks Stacks stops a specified number
of instances.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$set_load_based_auto_scaling(
      LayerId = "string",
      Enable = TRUE|FALSE,
      UpScaling = list(
        InstanceCount = 123,
        ThresholdsWaitTime = 123,
        IgnoreMetricsTime = 123,
        CpuThreshold = 123.0,
        MemoryThreshold = 123.0,
        LoadThreshold = 123.0,
        Alarms = list(
          "string"
        )
      ),
      DownScaling = list(
        InstanceCount = 123,
        ThresholdsWaitTime = 123,
        IgnoreMetricsTime = 123,
        CpuThreshold = 123.0,
        MemoryThreshold = 123.0,
        LoadThreshold = 123.0,
        Alarms = list(
          "string"
        )
      )
    )
