<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_get_devices</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about one or more of your devices in a global network

### Description

Gets information about one or more of your devices in a global network.

### Usage

    networkmanager_get_devices(GlobalNetworkId, DeviceIds, SiteId,
      MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_get_devices_:_GlobalNetworkId">GlobalNetworkId</code></td>
<td><p>[required] The ID of the global network.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_get_devices_:_DeviceIds">DeviceIds</code></td>
<td><p>One or more device IDs. The maximum is 10.</p></td>
</tr>
<tr class="odd">
<td><code id="networkmanager_get_devices_:_SiteId">SiteId</code></td>
<td><p>The ID of the site.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_get_devices_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_get_devices_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Devices = list(
        list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_devices(
      GlobalNetworkId = "string",
      DeviceIds = list(
        "string"
      ),
      SiteId = "string",
      MaxResults = 123,
      NextToken = "string"
    )
