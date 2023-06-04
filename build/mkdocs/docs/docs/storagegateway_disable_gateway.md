<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_disable_gateway</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disables a tape gateway when the gateway is no longer functioning

### Description

Disables a tape gateway when the gateway is no longer functioning. For
example, if your gateway VM is damaged, you can disable the gateway so
you can recover virtual tapes.

Use this operation for a tape gateway that is not reachable or not
functioning. This operation is only supported in the tape gateway type.

After a gateway is disabled, it cannot be enabled.

### Usage

    storagegateway_disable_gateway(GatewayARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_disable_gateway_:_GatewayARN">GatewayARN</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GatewayARN = "string"
    )

### Request syntax

    svc$disable_gateway(
      GatewayARN = "string"
    )

### Examples

    ## Not run: 
    # Disables a gateway when the gateway is no longer functioning. Use this
    # operation for a gateway-VTL that is not reachable or not functioning.
    svc$disable_gateway(
      GatewayARN = "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
    )

    ## End(Not run)
