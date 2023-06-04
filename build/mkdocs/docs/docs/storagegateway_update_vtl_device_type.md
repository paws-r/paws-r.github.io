<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_update_vtl_device_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the type of medium changer in a tape gateway

### Description

Updates the type of medium changer in a tape gateway. When you activate
a tape gateway, you select a medium changer type for the tape gateway.
This operation enables you to select a different type of medium changer
after a tape gateway is activated. This operation is only supported in
the tape gateway type.

### Usage

    storagegateway_update_vtl_device_type(VTLDeviceARN, DeviceType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_update_vtl_device_type_:_VTLDeviceARN">VTLDeviceARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the medium changer
you want to select.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_update_vtl_device_type_:_DeviceType">DeviceType</code></td>
<td><p>[required] The type of medium changer you want to select.</p>
<p>Valid Values: <code>STK-L700</code> | <code>AWS-Gateway-VTL</code> |
<code style="white-space: pre;">⁠IBM-03584L32-0402⁠</code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VTLDeviceARN = "string"
    )

### Request syntax

    svc$update_vtl_device_type(
      VTLDeviceARN = "string",
      DeviceType = "string"
    )

### Examples

    ## Not run: 
    # Updates the type of medium changer in a gateway-VTL after a gateway-VTL
    # is activated.
    svc$update_vtl_device_type(
      DeviceType = "Medium Changer",
      VTLDeviceARN = "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw..."
    )

    ## End(Not run)
