<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_admin_list_devices</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists devices, as an administrator

### Description

Lists devices, as an administrator.

Calling this action requires developer credentials.

### Usage

    cognitoidentityprovider_admin_list_devices(UserPoolId, Username, Limit,
      PaginationToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_list_devices_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_admin_list_devices_:_Username">Username</code></td>
<td><p>[required] The user name.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_list_devices_:_Limit">Limit</code></td>
<td><p>The limit of the devices request.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_admin_list_devices_:_PaginationToken">PaginationToken</code></td>
<td><p>The pagination token.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Devices = list(
        list(
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
      ),
      PaginationToken = "string"
    )

### Request syntax

    svc$admin_list_devices(
      UserPoolId = "string",
      Username = "string",
      Limit = 123,
      PaginationToken = "string"
    )
