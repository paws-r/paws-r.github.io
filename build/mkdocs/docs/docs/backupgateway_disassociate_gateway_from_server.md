<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backupgateway_disassociate_gateway_from_server</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates a backup gateway from the specified server

### Description

Disassociates a backup gateway from the specified server. After the
disassociation process finishes, the gateway can no longer access the
virtual machines on the server.

### Usage

    backupgateway_disassociate_gateway_from_server(GatewayArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backupgateway_disassociate_gateway_from_server_:_GatewayArn">GatewayArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the gateway to
disassociate.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GatewayArn = "string"
    )

### Request syntax

    svc$disassociate_gateway_from_server(
      GatewayArn = "string"
    )
