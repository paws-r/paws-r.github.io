<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_get_vpn_connection_device_sample_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Download an Amazon Web Services-provided sample configuration file to be used with the customer gateway device specified for your Site-to-Site VPN connection

### Description

Download an Amazon Web Services-provided sample configuration file to be
used with the customer gateway device specified for your Site-to-Site
VPN connection.

### Usage

    ec2_get_vpn_connection_device_sample_configuration(VpnConnectionId,
      VpnConnectionDeviceTypeId, InternetKeyExchangeVersion, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_get_vpn_connection_device_sample_configuration_:_VpnConnectionId">VpnConnectionId</code></td>
<td><p>[required] The <code>VpnConnectionId</code> specifies the
Site-to-Site VPN connection used for the sample configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_vpn_connection_device_sample_configuration_:_VpnConnectionDeviceTypeId">VpnConnectionDeviceTypeId</code></td>
<td><p>[required] Device identifier provided by the
<code>get_vpn_connection_device_types</code> API.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_get_vpn_connection_device_sample_configuration_:_InternetKeyExchangeVersion">InternetKeyExchangeVersion</code></td>
<td><p>The IKE version to be used in the sample configuration file for
your customer gateway device. You can specify one of the following
versions: <code>ikev1</code> or <code>ikev2</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_vpn_connection_device_sample_configuration_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VpnConnectionDeviceSampleConfiguration = "string"
    )

### Request syntax

    svc$get_vpn_connection_device_sample_configuration(
      VpnConnectionId = "string",
      VpnConnectionDeviceTypeId = "string",
      InternetKeyExchangeVersion = "string",
      DryRun = TRUE|FALSE
    )
