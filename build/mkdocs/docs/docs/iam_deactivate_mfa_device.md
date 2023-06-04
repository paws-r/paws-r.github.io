<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_deactivate_mfa_device</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deactivates the specified MFA device and removes it from association with the user name for which it was originally enabled

### Description

Deactivates the specified MFA device and removes it from association
with the user name for which it was originally enabled.

For more information about creating and working with virtual MFA
devices, see [Enabling a virtual multi-factor authentication (MFA)
device](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa_enable_virtual.html)
in the *IAM User Guide*.

### Usage

    iam_deactivate_mfa_device(UserName, SerialNumber)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_deactivate_mfa_device_:_UserName">UserName</code></td>
<td><p>[required] The name of the user whose MFA device you want to
deactivate.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="even">
<td><code
id="iam_deactivate_mfa_device_:_SerialNumber">SerialNumber</code></td>
<td><p>[required] The serial number that uniquely identifies the MFA
device. For virtual MFA devices, the serial number is the device
ARN.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
=,.@:/-</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$deactivate_mfa_device(
      UserName = "string",
      SerialNumber = "string"
    )
