<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_delete_launch_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified launch configuration

### Description

Deletes the specified launch configuration.

The launch configuration must not be attached to an Auto Scaling group.
When this call completes, the launch configuration is no longer
available for use.

### Usage

    autoscaling_delete_launch_configuration(LaunchConfigurationName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_delete_launch_configuration_:_LaunchConfigurationName">LaunchConfigurationName</code></td>
<td><p>[required] The name of the launch configuration.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_launch_configuration(
      LaunchConfigurationName = "string"
    )

### Examples

    ## Not run: 
    # This example deletes the specified launch configuration.
    svc$delete_launch_configuration(
      LaunchConfigurationName = "my-launch-config"
    )

    ## End(Not run)
