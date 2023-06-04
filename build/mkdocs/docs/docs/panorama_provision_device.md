<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>panorama_provision_device</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a device and returns a configuration archive

### Description

Creates a device and returns a configuration archive. The configuration
archive is a ZIP file that contains a provisioning certificate that is
valid for 5 minutes. Name the configuration archive
`certificates-omni_device-name.zip` and transfer it to the device within
5 minutes. Use the included USB storage device and connect it to the USB
3.0 port next to the HDMI output.

### Usage

    panorama_provision_device(Description, Name, NetworkingConfiguration,
      Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="panorama_provision_device_:_Description">Description</code></td>
<td><p>A description for the device.</p></td>
</tr>
<tr class="even">
<td><code id="panorama_provision_device_:_Name">Name</code></td>
<td><p>[required] A name for the device.</p></td>
</tr>
<tr class="odd">
<td><code
id="panorama_provision_device_:_NetworkingConfiguration">NetworkingConfiguration</code></td>
<td><p>A networking configuration for the device.</p></td>
</tr>
<tr class="even">
<td><code id="panorama_provision_device_:_Tags">Tags</code></td>
<td><p>Tags for the device.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string",
      Certificates = raw,
      DeviceId = "string",
      IotThingName = "string",
      Status = "AWAITING_PROVISIONING"|"PENDING"|"SUCCEEDED"|"FAILED"|"ERROR"|"DELETING"
    )

### Request syntax

    svc$provision_device(
      Description = "string",
      Name = "string",
      NetworkingConfiguration = list(
        Ethernet0 = list(
          ConnectionType = "STATIC_IP"|"DHCP",
          StaticIpConnectionInfo = list(
            DefaultGateway = "string",
            Dns = list(
              "string"
            ),
            IpAddress = "string",
            Mask = "string"
          )
        ),
        Ethernet1 = list(
          ConnectionType = "STATIC_IP"|"DHCP",
          StaticIpConnectionInfo = list(
            DefaultGateway = "string",
            Dns = list(
              "string"
            ),
            IpAddress = "string",
            Mask = "string"
          )
        ),
        Ntp = list(
          NtpServers = list(
            "string"
          )
        )
      ),
      Tags = list(
        "string"
      )
    )
