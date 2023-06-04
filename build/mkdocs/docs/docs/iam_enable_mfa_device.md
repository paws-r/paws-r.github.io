<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_enable_mfa_device</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables the specified MFA device and associates it with the specified IAM user

### Description

Enables the specified MFA device and associates it with the specified
IAM user. When enabled, the MFA device is required for every subsequent
login by the IAM user associated with the device.

### Usage

    iam_enable_mfa_device(UserName, SerialNumber, AuthenticationCode1,
      AuthenticationCode2)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_enable_mfa_device_:_UserName">UserName</code></td>
<td><p>[required] The name of the IAM user for whom you want to enable
the MFA device.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="even">
<td><code
id="iam_enable_mfa_device_:_SerialNumber">SerialNumber</code></td>
<td><p>[required] The serial number that uniquely identifies the MFA
device. For virtual MFA devices, the serial number is the device
ARN.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
=,.@:/-</p></td>
</tr>
<tr class="odd">
<td><code
id="iam_enable_mfa_device_:_AuthenticationCode1">AuthenticationCode1</code></td>
<td><p>[required] An authentication code emitted by the device.</p>
<p>The format for this parameter is a string of six digits.</p>
<p>Submit your request immediately after generating the authentication
codes. If you generate the codes and then wait too long to submit the
request, the MFA device successfully associates with the user but the
MFA device becomes out of sync. This happens because time-based one-time
passwords (TOTP) expire after a short period of time. If this happens,
you can <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa_sync.html">resync
the device</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="iam_enable_mfa_device_:_AuthenticationCode2">AuthenticationCode2</code></td>
<td><p>[required] A subsequent authentication code emitted by the
device.</p>
<p>The format for this parameter is a string of six digits.</p>
<p>Submit your request immediately after generating the authentication
codes. If you generate the codes and then wait too long to submit the
request, the MFA device successfully associates with the user but the
MFA device becomes out of sync. This happens because time-based one-time
passwords (TOTP) expire after a short period of time. If this happens,
you can <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa_sync.html">resync
the device</a>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$enable_mfa_device(
      UserName = "string",
      SerialNumber = "string",
      AuthenticationCode1 = "string",
      AuthenticationCode2 = "string"
    )
