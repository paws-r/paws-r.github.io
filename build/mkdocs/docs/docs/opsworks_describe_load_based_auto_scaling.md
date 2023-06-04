<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_describe_load_based_auto_scaling</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes load-based auto scaling configurations for specified layers

### Description

Describes load-based auto scaling configurations for specified layers.

You must specify at least one of the parameters.

**Required Permissions**: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information about
user permissions, see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_describe_load_based_auto_scaling(LayerIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworks_describe_load_based_auto_scaling_:_LayerIds">LayerIds</code></td>
<td><p>[required] An array of layer IDs.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LoadBasedAutoScalingConfigurations = list(
        list(
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
      )
    )

### Request syntax

    svc$describe_load_based_auto_scaling(
      LayerIds = list(
        "string"
      )
    )
