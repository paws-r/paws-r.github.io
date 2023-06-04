<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backupgateway_associate_gateway_to_server</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates a backup gateway with your server

### Description

Associates a backup gateway with your server. After you complete the
association process, you can back up and restore your VMs through the
gateway.

### Usage

    backupgateway_associate_gateway_to_server(GatewayArn, ServerArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backupgateway_associate_gateway_to_server_:_GatewayArn">GatewayArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the gateway. Use the
<code>list_gateways</code> operation to return a list of gateways for
your account and Amazon Web Services Region.</p></td>
</tr>
<tr class="even">
<td><code
id="backupgateway_associate_gateway_to_server_:_ServerArn">ServerArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the server that
hosts your virtual machines.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GatewayArn = "string"
    )

### Request syntax

    svc$associate_gateway_to_server(
      GatewayArn = "string",
      ServerArn = "string"
    )
