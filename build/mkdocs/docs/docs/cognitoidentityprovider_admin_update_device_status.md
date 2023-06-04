<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_admin_update_device_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the device status as an administrator

### Description

Updates the device status as an administrator.

Calling this action requires developer credentials.

### Usage

    cognitoidentityprovider_admin_update_device_status(UserPoolId, Username,
      DeviceKey, DeviceRememberedStatus)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_update_device_status_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_admin_update_device_status_:_Username">Username</code></td>
<td><p>[required] The user name.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_update_device_status_:_DeviceKey">DeviceKey</code></td>
<td><p>[required] The device key.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_admin_update_device_status_:_DeviceRememberedStatus">DeviceRememberedStatus</code></td>
<td><p>The status indicating whether a device has been remembered or
not.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$admin_update_device_status(
      UserPoolId = "string",
      Username = "string",
      DeviceKey = "string",
      DeviceRememberedStatus = "remembered"|"not_remembered"
    )
