<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>worklink_describe_device_policy_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the device policy configuration for the specified fleet

### Description

Describes the device policy configuration for the specified fleet.

### Usage

    worklink_describe_device_policy_configuration(FleetArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="worklink_describe_device_policy_configuration_:_FleetArn">FleetArn</code></td>
<td><p>[required] The ARN of the fleet.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DeviceCaCertificate = "string"
    )

### Request syntax

    svc$describe_device_policy_configuration(
      FleetArn = "string"
    )
