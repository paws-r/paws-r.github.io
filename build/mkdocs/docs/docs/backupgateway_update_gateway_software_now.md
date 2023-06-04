<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backupgateway_update_gateway_software_now</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the gateway virtual machine (VM) software

### Description

Updates the gateway virtual machine (VM) software. The request
immediately triggers the software update.

When you make this request, you get a `⁠200 OK⁠` success response
immediately. However, it might take some time for the update to
complete.

### Usage

    backupgateway_update_gateway_software_now(GatewayArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backupgateway_update_gateway_software_now_:_GatewayArn">GatewayArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the gateway to be
updated.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GatewayArn = "string"
    )

### Request syntax

    svc$update_gateway_software_now(
      GatewayArn = "string"
    )
