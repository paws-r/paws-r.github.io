<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_list_devices</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the sign-in devices that Amazon Cognito has registered to the current user

### Description

Lists the sign-in devices that Amazon Cognito has registered to the
current user.

### Usage

    cognitoidentityprovider_list_devices(AccessToken, Limit,
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
id="cognitoidentityprovider_list_devices_:_AccessToken">AccessToken</code></td>
<td><p>[required] A valid access token that Amazon Cognito issued to the
user whose list of devices you want to view.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_list_devices_:_Limit">Limit</code></td>
<td><p>The limit of the device request.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_list_devices_:_PaginationToken">PaginationToken</code></td>
<td><p>The pagination token for the list request.</p></td>
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

    svc$list_devices(
      AccessToken = "string",
      Limit = 123,
      PaginationToken = "string"
    )
