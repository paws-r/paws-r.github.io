<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_set_time_based_auto_scaling</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Specify the time-based auto scaling configuration for a specified instance

### Description

Specify the time-based auto scaling configuration for a specified
instance. For more information, see [Managing Load with Time-based and
Load-based
Instances](https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-autoscaling.html).

**Required Permissions**: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user permissions,
see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_set_time_based_auto_scaling(InstanceId, AutoScalingSchedule)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworks_set_time_based_auto_scaling_:_InstanceId">InstanceId</code></td>
<td><p>[required] The instance ID.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_set_time_based_auto_scaling_:_AutoScalingSchedule">AutoScalingSchedule</code></td>
<td><p>An <code>AutoScalingSchedule</code> with the instance
schedule.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$set_time_based_auto_scaling(
      InstanceId = "string",
      AutoScalingSchedule = list(
        Monday = list(
          "string"
        ),
        Tuesday = list(
          "string"
        ),
        Wednesday = list(
          "string"
        ),
        Thursday = list(
          "string"
        ),
        Friday = list(
          "string"
        ),
        Saturday = list(
          "string"
        ),
        Sunday = list(
          "string"
        )
      )
    )
