<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_attach_network_interface</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attaches a network interface to an instance

### Description

Attaches a network interface to an instance.

### Usage

    ec2_attach_network_interface(DeviceIndex, DryRun, InstanceId,
      NetworkInterfaceId, NetworkCardIndex, EnaSrdSpecification)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_attach_network_interface_:_DeviceIndex">DeviceIndex</code></td>
<td><p>[required] The index of the device for the network interface
attachment.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_attach_network_interface_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_attach_network_interface_:_InstanceId">InstanceId</code></td>
<td><p>[required] The ID of the instance.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_attach_network_interface_:_NetworkInterfaceId">NetworkInterfaceId</code></td>
<td><p>[required] The ID of the network interface.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_attach_network_interface_:_NetworkCardIndex">NetworkCardIndex</code></td>
<td><p>The index of the network card. Some instance types support
multiple network cards. The primary network interface must be assigned
to network card index 0. The default is network card index 0.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_attach_network_interface_:_EnaSrdSpecification">EnaSrdSpecification</code></td>
<td><p>Configures ENA Express for the network interface that this action
attaches to the instance.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AttachmentId = "string",
      NetworkCardIndex = 123
    )

### Request syntax

    svc$attach_network_interface(
      DeviceIndex = 123,
      DryRun = TRUE|FALSE,
      InstanceId = "string",
      NetworkInterfaceId = "string",
      NetworkCardIndex = 123,
      EnaSrdSpecification = list(
        EnaSrdEnabled = TRUE|FALSE,
        EnaSrdUdpSpecification = list(
          EnaSrdUdpEnabled = TRUE|FALSE
        )
      )
    )

### Examples

    ## Not run: 
    # This example attaches the specified network interface to the specified
    # instance.
    svc$attach_network_interface(
      DeviceIndex = 1L,
      InstanceId = "i-1234567890abcdef0",
      NetworkInterfaceId = "eni-e5aa89a3"
    )

    ## End(Not run)
