<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_start_gateway</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a gateway that you previously shut down (see ShutdownGateway)

### Description

Starts a gateway that you previously shut down (see `shutdown_gateway`).
After the gateway starts, you can then make other API calls, your
applications can read from or write to the gateway's storage volumes and
you will be able to take snapshot backups.

When you make a request, you will get a 200 OK success response
immediately. However, it might take some time for the gateway to be
ready. You should call `describe_gateway_information` and check the
status before making any additional API calls. For more information, see
`activate_gateway`.

To specify which gateway to start, use the Amazon Resource Name (ARN) of
the gateway in your request.

### Usage

    storagegateway_start_gateway(GatewayARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_start_gateway_:_GatewayARN">GatewayARN</code></td>
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

    svc$start_gateway(
      GatewayARN = "string"
    )

### Examples

    ## Not run: 
    # Starts a gateway service that was previously shut down.
    svc$start_gateway(
      GatewayARN = "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B"
    )

    ## End(Not run)
