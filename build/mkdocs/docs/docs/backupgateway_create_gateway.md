<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backupgateway_create_gateway</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a backup gateway

### Description

Creates a backup gateway. After you create a gateway, you can associate
it with a server using the `associate_gateway_to_server` operation.

### Usage

    backupgateway_create_gateway(ActivationKey, GatewayDisplayName,
      GatewayType, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backupgateway_create_gateway_:_ActivationKey">ActivationKey</code></td>
<td><p>[required] The activation key of the created gateway.</p></td>
</tr>
<tr class="even">
<td><code
id="backupgateway_create_gateway_:_GatewayDisplayName">GatewayDisplayName</code></td>
<td><p>[required] The display name of the created gateway.</p></td>
</tr>
<tr class="odd">
<td><code
id="backupgateway_create_gateway_:_GatewayType">GatewayType</code></td>
<td><p>[required] The type of created gateway.</p></td>
</tr>
<tr class="even">
<td><code id="backupgateway_create_gateway_:_Tags">Tags</code></td>
<td><p>A list of up to 50 tags to assign to the gateway. Each tag is a
key-value pair.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GatewayArn = "string"
    )

### Request syntax

    svc$create_gateway(
      ActivationKey = "string",
      GatewayDisplayName = "string",
      GatewayType = "BACKUP_VM",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
