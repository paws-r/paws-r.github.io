<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_admin_forget_device</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Forgets the device, as an administrator

### Description

Forgets the device, as an administrator.

Calling this action requires developer credentials.

### Usage

    cognitoidentityprovider_admin_forget_device(UserPoolId, Username,
      DeviceKey)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_forget_device_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_admin_forget_device_:_Username">Username</code></td>
<td><p>[required] The user name.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_forget_device_:_DeviceKey">DeviceKey</code></td>
<td><p>[required] The device key.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$admin_forget_device(
      UserPoolId = "string",
      Username = "string",
      DeviceKey = "string"
    )
