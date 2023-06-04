<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_resync_mfa_device</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Synchronizes the specified MFA device with its IAM resource object on the Amazon Web Services servers

### Description

Synchronizes the specified MFA device with its IAM resource object on
the Amazon Web Services servers.

For more information about creating and working with virtual MFA
devices, see [Using a virtual MFA
device](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa_enable_virtual.html)
in the *IAM User Guide*.

### Usage

    iam_resync_mfa_device(UserName, SerialNumber, AuthenticationCode1,
      AuthenticationCode2)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_resync_mfa_device_:_UserName">UserName</code></td>
<td><p>[required] The name of the user whose MFA device you want to
resynchronize.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="even">
<td><code
id="iam_resync_mfa_device_:_SerialNumber">SerialNumber</code></td>
<td><p>[required] Serial number that uniquely identifies the MFA
device.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="odd">
<td><code
id="iam_resync_mfa_device_:_AuthenticationCode1">AuthenticationCode1</code></td>
<td><p>[required] An authentication code emitted by the device.</p>
<p>The format for this parameter is a sequence of six digits.</p></td>
</tr>
<tr class="even">
<td><code
id="iam_resync_mfa_device_:_AuthenticationCode2">AuthenticationCode2</code></td>
<td><p>[required] A subsequent authentication code emitted by the
device.</p>
<p>The format for this parameter is a sequence of six digits.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$resync_mfa_device(
      UserName = "string",
      SerialNumber = "string",
      AuthenticationCode1 = "string",
      AuthenticationCode2 = "string"
    )
