<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>panorama_describe_device</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a device

### Description

Returns information about a device.

### Usage

    panorama_describe_device(DeviceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="panorama_describe_device_:_DeviceId">DeviceId</code></td>
<td><p>[required] The device's ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AlternateSoftwares = list(
        list(
          Version = "string"
        )
      ),
      Arn = "string",
      Brand = "AWS_PANORAMA"|"LENOVO",
      CreatedTime = as.POSIXct(
        "2015-01-01"
      ),
      CurrentNetworkingStatus = list(
        Ethernet0Status = list(
          ConnectionStatus = "CONNECTED"|"NOT_CONNECTED"|"CONNECTING",
          HwAddress = "string",
          IpAddress = "string"
        ),
        Ethernet1Status = list(
          ConnectionStatus = "CONNECTED"|"NOT_CONNECTED"|"CONNECTING",
          HwAddress = "string",
          IpAddress = "string"
        ),
        LastUpdatedTime = as.POSIXct(
          "2015-01-01"
        ),
        NtpStatus = list(
          ConnectionStatus = "CONNECTED"|"NOT_CONNECTED"|"CONNECTING",
          IpAddress = "string",
          NtpServerName = "string"
        )
      ),
      CurrentSoftware = "string",
      Description = "string",
      DeviceAggregatedStatus = "ERROR"|"AWAITING_PROVISIONING"|"PENDING"|"FAILED"|"DELETING"|"ONLINE"|"OFFLINE"|"LEASE_EXPIRED"|"UPDATE_NEEDED"|"REBOOTING",
      DeviceConnectionStatus = "ONLINE"|"OFFLINE"|"AWAITING_CREDENTIALS"|"NOT_AVAILABLE"|"ERROR",
      DeviceId = "string",
      LatestAlternateSoftware = "string",
      LatestDeviceJob = list(
        ImageVersion = "string",
        JobType = "OTA"|"REBOOT",
        Status = "PENDING"|"IN_PROGRESS"|"VERIFYING"|"REBOOTING"|"DOWNLOADING"|"COMPLETED"|"FAILED"
      ),
      LatestSoftware = "string",
      LeaseExpirationTime = as.POSIXct(
        "2015-01-01"
      ),
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
      ProvisioningStatus = "AWAITING_PROVISIONING"|"PENDING"|"SUCCEEDED"|"FAILED"|"ERROR"|"DELETING",
      SerialNumber = "string",
      Tags = list(
        "string"
      ),
      Type = "PANORAMA_APPLIANCE_DEVELOPER_KIT"|"PANORAMA_APPLIANCE"
    )

### Request syntax

    svc$describe_device(
      DeviceId = "string"
    )
