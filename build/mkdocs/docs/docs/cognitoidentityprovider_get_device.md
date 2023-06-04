<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_get_device</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the device

### Description

Gets the device.

### Usage

    cognitoidentityprovider_get_device(DeviceKey, AccessToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_get_device_:_DeviceKey">DeviceKey</code></td>
<td><p>[required] The device key.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_get_device_:_AccessToken">AccessToken</code></td>
<td><p>A valid access token that Amazon Cognito issued to the user whose
device information you want to request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Device = list(
        DeviceKey = "string",
        DeviceAttributes = list(
          list(
            Name = "string",
            Value = "string"
          )
        ),
        DeviceCreateDate = as.POSIXct(
          "2015-01-01"
        ),
        DeviceLastModifiedDate = as.POSIXct(
          "2015-01-01"
        ),
        DeviceLastAuthenticatedDate = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$get_device(
      DeviceKey = "string",
      AccessToken = "string"
    )
