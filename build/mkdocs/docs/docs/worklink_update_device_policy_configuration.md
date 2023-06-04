<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>worklink_update_device_policy_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the device policy configuration for the fleet

### Description

Updates the device policy configuration for the fleet.

### Usage

    worklink_update_device_policy_configuration(FleetArn,
      DeviceCaCertificate)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="worklink_update_device_policy_configuration_:_FleetArn">FleetArn</code></td>
<td><p>[required] The ARN of the fleet.</p></td>
</tr>
<tr class="even">
<td><code
id="worklink_update_device_policy_configuration_:_DeviceCaCertificate">DeviceCaCertificate</code></td>
<td><p>The certificate chain, including intermediate certificates and
the root certificate authority certificate used to issue device
certificates.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_device_policy_configuration(
      FleetArn = "string",
      DeviceCaCertificate = "string"
    )
