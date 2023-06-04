<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backupgateway_delete_gateway</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a backup gateway

### Description

Deletes a backup gateway.

### Usage

    backupgateway_delete_gateway(GatewayArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backupgateway_delete_gateway_:_GatewayArn">GatewayArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the gateway to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GatewayArn = "string"
    )

### Request syntax

    svc$delete_gateway(
      GatewayArn = "string"
    )
