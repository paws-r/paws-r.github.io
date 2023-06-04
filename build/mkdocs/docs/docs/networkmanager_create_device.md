<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_create_device</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new device in a global network

### Description

Creates a new device in a global network. If you specify both a site ID
and a location, the location of the site is used for visualization in
the Network Manager console.

### Usage

    networkmanager_create_device(GlobalNetworkId, AWSLocation, Description,
      Type, Vendor, Model, SerialNumber, Location, SiteId, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_create_device_:_GlobalNetworkId">GlobalNetworkId</code></td>
<td><p>[required] The ID of the global network.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_create_device_:_AWSLocation">AWSLocation</code></td>
<td><p>The Amazon Web Services location of the device, if applicable.
For an on-premises device, you can omit this parameter.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_create_device_:_Description">Description</code></td>
<td><p>A description of the device.</p>
<p>Constraints: Maximum length of 256 characters.</p></td>
</tr>
<tr class="even">
<td><code id="networkmanager_create_device_:_Type">Type</code></td>
<td><p>The type of the device.</p></td>
</tr>
<tr class="odd">
<td><code id="networkmanager_create_device_:_Vendor">Vendor</code></td>
<td><p>The vendor of the device.</p>
<p>Constraints: Maximum length of 128 characters.</p></td>
</tr>
<tr class="even">
<td><code id="networkmanager_create_device_:_Model">Model</code></td>
<td><p>The model of the device.</p>
<p>Constraints: Maximum length of 128 characters.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_create_device_:_SerialNumber">SerialNumber</code></td>
<td><p>The serial number of the device.</p>
<p>Constraints: Maximum length of 128 characters.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_create_device_:_Location">Location</code></td>
<td><p>The location of the device.</p></td>
</tr>
<tr class="odd">
<td><code id="networkmanager_create_device_:_SiteId">SiteId</code></td>
<td><p>The ID of the site.</p></td>
</tr>
<tr class="even">
<td><code id="networkmanager_create_device_:_Tags">Tags</code></td>
<td><p>The tags to apply to the resource during creation.</p></td>
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

    svc$create_device(
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
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
