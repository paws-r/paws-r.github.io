<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backupgateway_test_hypervisor_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Tests your hypervisor configuration to validate that backup gateway can connect with the hypervisor and its resources

### Description

Tests your hypervisor configuration to validate that backup gateway can
connect with the hypervisor and its resources.

### Usage

    backupgateway_test_hypervisor_configuration(GatewayArn, Host, Password,
      Username)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backupgateway_test_hypervisor_configuration_:_GatewayArn">GatewayArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the gateway to the
hypervisor to test.</p></td>
</tr>
<tr class="even">
<td><code
id="backupgateway_test_hypervisor_configuration_:_Host">Host</code></td>
<td><p>[required] The server host of the hypervisor. This can be either
an IP address or a fully-qualified domain name (FQDN).</p></td>
</tr>
<tr class="odd">
<td><code
id="backupgateway_test_hypervisor_configuration_:_Password">Password</code></td>
<td><p>The password for the hypervisor.</p></td>
</tr>
<tr class="even">
<td><code
id="backupgateway_test_hypervisor_configuration_:_Username">Username</code></td>
<td><p>The username for the hypervisor.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$test_hypervisor_configuration(
      GatewayArn = "string",
      Host = "string",
      Password = "string",
      Username = "string"
    )
