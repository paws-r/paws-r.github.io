<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_delete_device</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an existing device

### Description

Deletes an existing device. You must first disassociate the device from
any links and customer gateways.

### Usage

    networkmanager_delete_device(GlobalNetworkId, DeviceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_delete_device_:_GlobalNetworkId">GlobalNetworkId</code></td>
<td><p>[required] The ID of the global network.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_delete_device_:_DeviceId">DeviceId</code></td>
<td><p>[required] The ID of the device.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Device = list(
        DeviceId = "string",
        DeviceArn = "string",
        GlobalNetworkId = "string",
        AWSLocation = list(
          Zone = "string",
          SubnetArn = "string"
        ),
        Description = "string",
        Type = "string",
        Vendor = "string",
        Model = "string",
        SerialNumber = "string",
        Location = list(
          Address = "string",
          Latitude = "string",
          Longitude = "string"
        ),
        SiteId = "string",
        CreatedAt = as.POSIXct(
          "2015-01-01"
        ),
        State = "PENDING"|"AVAILABLE"|"DELETING"|"UPDATING",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$delete_device(
      GlobalNetworkId = "string",
      DeviceId = "string"
    )
