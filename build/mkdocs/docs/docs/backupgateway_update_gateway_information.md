<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backupgateway_update_gateway_information</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a gateway's name

### Description

Updates a gateway's name. Specify which gateway to update using the
Amazon Resource Name (ARN) of the gateway in your request.

### Usage

    backupgateway_update_gateway_information(GatewayArn, GatewayDisplayName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backupgateway_update_gateway_information_:_GatewayArn">GatewayArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the gateway to
update.</p></td>
</tr>
<tr class="even">
<td><code
id="backupgateway_update_gateway_information_:_GatewayDisplayName">GatewayDisplayName</code></td>
<td><p>The updated display name of the gateway.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GatewayArn = "string"
    )

### Request syntax

    svc$update_gateway_information(
      GatewayArn = "string",
      GatewayDisplayName = "string"
    )
