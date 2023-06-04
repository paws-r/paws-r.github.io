<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_admin_get_device</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the device, as an administrator

### Description

Gets the device, as an administrator.

Calling this action requires developer credentials.

### Usage

    cognitoidentityprovider_admin_get_device(DeviceKey, UserPoolId,
      Username)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_get_device_:_DeviceKey">DeviceKey</code></td>
<td><p>[required] The device key.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_admin_get_device_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_get_device_:_Username">Username</code></td>
<td><p>[required] The user name.</p></td>
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

    svc$admin_get_device(
      DeviceKey = "string",
      UserPoolId = "string",
      Username = "string"
    )
