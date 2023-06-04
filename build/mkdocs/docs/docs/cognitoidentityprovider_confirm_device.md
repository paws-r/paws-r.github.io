<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_confirm_device</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Confirms tracking of the device

### Description

Confirms tracking of the device. This API call is the call that begins
device tracking.

### Usage

    cognitoidentityprovider_confirm_device(AccessToken, DeviceKey,
      DeviceSecretVerifierConfig, DeviceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_confirm_device_:_AccessToken">AccessToken</code></td>
<td><p>[required] A valid access token that Amazon Cognito issued to the
user whose device you want to confirm.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_confirm_device_:_DeviceKey">DeviceKey</code></td>
<td><p>[required] The device key.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_confirm_device_:_DeviceSecretVerifierConfig">DeviceSecretVerifierConfig</code></td>
<td><p>The configuration of the device secret verifier.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_confirm_device_:_DeviceName">DeviceName</code></td>
<td><p>The device name.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UserConfirmationNecessary = TRUE|FALSE
    )

### Request syntax

    svc$confirm_device(
      AccessToken = "string",
      DeviceKey = "string",
      DeviceSecretVerifierConfig = list(
        PasswordVerifier = "string",
        Salt = "string"
      ),
      DeviceName = "string"
    )
