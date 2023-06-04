<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_forget_device</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Forgets the specified device

### Description

Forgets the specified device.

### Usage

    cognitoidentityprovider_forget_device(AccessToken, DeviceKey)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_forget_device_:_AccessToken">AccessToken</code></td>
<td><p>A valid access token that Amazon Cognito issued to the user whose
registered device you want to forget.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_forget_device_:_DeviceKey">DeviceKey</code></td>
<td><p>[required] The device key.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$forget_device(
      AccessToken = "string",
      DeviceKey = "string"
    )
