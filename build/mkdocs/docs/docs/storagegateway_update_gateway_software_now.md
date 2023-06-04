<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_update_gateway_software_now</td>
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
complete. You can call `describe_gateway_information` to verify the
gateway is in the `STATE_RUNNING` state.

A software update forces a system restart of your gateway. You can
minimize the chance of any disruption to your applications by increasing
your iSCSI Initiators' timeouts. For more information about increasing
iSCSI Initiator timeouts for Windows and Linux, see [Customizing your
Windows iSCSI
settings](https://docs.aws.amazon.com/storagegateway/index.html#CustomizeWindowsiSCSISettings)
and [Customizing your Linux iSCSI
settings](https://docs.aws.amazon.com/storagegateway/index.html#CustomizeLinuxiSCSISettings),
respectively.

### Usage

    storagegateway_update_gateway_software_now(GatewayARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_update_gateway_software_now_:_GatewayARN">GatewayARN</code></td>
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

    svc$update_gateway_software_now(
      GatewayARN = "string"
    )

### Examples

    ## Not run: 
    # Updates the gateway virtual machine (VM) software. The request
    # immediately triggers the software update.
    svc$update_gateway_software_now(
      GatewayARN = "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
    )

    ## End(Not run)
