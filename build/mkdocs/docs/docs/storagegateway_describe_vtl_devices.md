<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_describe_vtl_devices</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a description of virtual tape library (VTL) devices for the specified tape gateway

### Description

Returns a description of virtual tape library (VTL) devices for the
specified tape gateway. In the response, Storage Gateway returns VTL
device information.

This operation is only supported in the tape gateway type.

### Usage

    storagegateway_describe_vtl_devices(GatewayARN, VTLDeviceARNs, Marker,
      Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_describe_vtl_devices_:_GatewayARN">GatewayARN</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_describe_vtl_devices_:_VTLDeviceARNs">VTLDeviceARNs</code></td>
<td><p>An array of strings, where each string represents the Amazon
Resource Name (ARN) of a VTL device.</p>
<p>All of the specified VTL devices must be from the same gateway. If no
VTL devices are specified, the result will contain all devices on the
specified gateway.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_describe_vtl_devices_:_Marker">Marker</code></td>
<td><p>An opaque string that indicates the position at which to begin
describing the VTL devices.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_describe_vtl_devices_:_Limit">Limit</code></td>
<td><p>Specifies that the number of VTL devices described be limited to
the specified number.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GatewayARN = "string",
      VTLDevices = list(
        list(
          VTLDeviceARN = "string",
          VTLDeviceType = "string",
          VTLDeviceVendor = "string",
          VTLDeviceProductIdentifier = "string",
          DeviceiSCSIAttributes = list(
            TargetARN = "string",
            NetworkInterfaceId = "string",
            NetworkInterfacePort = 123,
            ChapEnabled = TRUE|FALSE
          )
        )
      ),
      Marker = "string"
    )

### Request syntax

    svc$describe_vtl_devices(
      GatewayARN = "string",
      VTLDeviceARNs = list(
        "string"
      ),
      Marker = "string",
      Limit = 123
    )

### Examples

    ## Not run: 
    # Returns a description of virtual tape library (VTL) devices for the
    # specified gateway.
    svc$describe_vtl_devices(
      GatewayARN = "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B",
      Limit = 123L,
      Marker = "1",
      VTLDeviceARNs = list()
    )

    ## End(Not run)
