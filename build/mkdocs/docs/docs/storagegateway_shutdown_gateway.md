<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_shutdown_gateway</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Shuts down a gateway

### Description

Shuts down a gateway. To specify which gateway to shut down, use the
Amazon Resource Name (ARN) of the gateway in the body of your request.

The operation shuts down the gateway service component running in the
gateway's virtual machine (VM) and not the host VM.

If you want to shut down the VM, it is recommended that you first shut
down the gateway component in the VM to avoid unpredictable conditions.

After the gateway is shutdown, you cannot call any other API except
`start_gateway`, `describe_gateway_information`, and `list_gateways`.
For more information, see `activate_gateway`. Your applications cannot
read from or write to the gateway's storage volumes, and there are no
snapshots taken.

When you make a shutdown request, you will get a `⁠200 OK⁠` success
response immediately. However, it might take some time for the gateway
to shut down. You can call the `describe_gateway_information` API to
check the status. For more information, see `activate_gateway`.

If do not intend to use the gateway again, you must delete the gateway
(using `delete_gateway`) to no longer pay software charges associated
with the gateway.

### Usage

    storagegateway_shutdown_gateway(GatewayARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_shutdown_gateway_:_GatewayARN">GatewayARN</code></td>
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

    svc$shutdown_gateway(
      GatewayARN = "string"
    )

### Examples

    ## Not run: 
    # This operation shuts down the gateway service component running in the
    # storage gateway's virtual machine (VM) and not the VM.
    svc$shutdown_gateway(
      GatewayARN = "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B"
    )

    ## End(Not run)
