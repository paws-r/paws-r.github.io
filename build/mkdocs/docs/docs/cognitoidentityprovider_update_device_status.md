<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_update_device_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the device status

### Description

Updates the device status.

### Usage

    cognitoidentityprovider_update_device_status(AccessToken, DeviceKey,
      DeviceRememberedStatus)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_update_device_status_:_AccessToken">AccessToken</code></td>
<td><p>[required] A valid access token that Amazon Cognito issued to the
user whose device status you want to update.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_update_device_status_:_DeviceKey">DeviceKey</code></td>
<td><p>[required] The device key.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_update_device_status_:_DeviceRememberedStatus">DeviceRememberedStatus</code></td>
<td><p>The status of whether a device is remembered.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_device_status(
      AccessToken = "string",
      DeviceKey = "string",
      DeviceRememberedStatus = "remembered"|"not_remembered"
    )
