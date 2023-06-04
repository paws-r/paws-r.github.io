<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_describe_time_based_auto_scaling</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes time-based auto scaling configurations for specified instances

### Description

Describes time-based auto scaling configurations for specified
instances.

You must specify at least one of the parameters.

**Required Permissions**: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information about
user permissions, see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_describe_time_based_auto_scaling(InstanceIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworks_describe_time_based_auto_scaling_:_InstanceIds">InstanceIds</code></td>
<td><p>[required] An array of instance IDs.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TimeBasedAutoScalingConfigurations = list(
        list(
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
      )
    )

### Request syntax

    svc$describe_time_based_auto_scaling(
      InstanceIds = list(
        "string"
      )
    )
