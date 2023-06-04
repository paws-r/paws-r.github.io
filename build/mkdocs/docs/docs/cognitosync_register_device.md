<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitosync_register_device</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Registers a device to receive push sync notifications

### Description

Registers a device to receive push sync notifications.

This API can only be called with temporary credentials provided by
Cognito Identity. You cannot call this API with developer credentials.

### Usage

    cognitosync_register_device(IdentityPoolId, IdentityId, Platform, Token)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitosync_register_device_:_IdentityPoolId">IdentityPoolId</code></td>
<td><p>[required] A name-spaced GUID (for example,
us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
Cognito. Here, the ID of the pool that the identity belongs to.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitosync_register_device_:_IdentityId">IdentityId</code></td>
<td><p>[required] The unique ID for this identity.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitosync_register_device_:_Platform">Platform</code></td>
<td><p>[required] The SNS platform type (e.g. GCM, SDM, APNS,
APNS_SANDBOX).</p></td>
</tr>
<tr class="even">
<td><code id="cognitosync_register_device_:_Token">Token</code></td>
<td><p>[required] The push token.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DeviceId = "string"
    )

### Request syntax

    svc$register_device(
      IdentityPoolId = "string",
      IdentityId = "string",
      Platform = "APNS"|"APNS_SANDBOX"|"GCM"|"ADM",
      Token = "string"
    )
