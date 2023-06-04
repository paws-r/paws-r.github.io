<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_create_virtual_mfa_device</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new virtual MFA device for the Amazon Web Services account

### Description

Creates a new virtual MFA device for the Amazon Web Services account.
After creating the virtual MFA, use `enable_mfa_device` to attach the
MFA device to an IAM user. For more information about creating and
working with virtual MFA devices, see [Using a virtual MFA
device](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa_enable_virtual.html)
in the *IAM User Guide*.

For information about the maximum number of MFA devices you can create,
see [IAM and STS
quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html)
in the *IAM User Guide*.

The seed information contained in the QR code and the Base32 string
should be treated like any other secret access information. In other
words, protect the seed information as you would your Amazon Web
Services access keys or your passwords. After you provision your virtual
device, you should ensure that the information is destroyed following
secure procedures.

### Usage

    iam_create_virtual_mfa_device(Path, VirtualMFADeviceName, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_create_virtual_mfa_device_:_Path">Path</code></td>
<td><p>The path for the virtual MFA device. For more information about
paths, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM
identifiers</a> in the <em>IAM User Guide</em>.</p>
<p>This parameter is optional. If it is not included, it defaults to a
slash (/).</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of either a forward slash (/) by itself or a
string that must begin and end with forward slashes. In addition, it can
contain any ASCII character from the ! (<code>U+0021</code>) through the
DEL character (<code style="white-space: pre;">⁠U+007F⁠</code>), including
most punctuation characters, digits, and upper and lowercased
letters.</p></td>
</tr>
<tr class="even">
<td><code
id="iam_create_virtual_mfa_device_:_VirtualMFADeviceName">VirtualMFADeviceName</code></td>
<td><p>[required] The name of the virtual MFA device, which must be
unique. Use with path to uniquely identify a virtual MFA device.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="odd">
<td><code id="iam_create_virtual_mfa_device_:_Tags">Tags</code></td>
<td><p>A list of tags that you want to attach to the new IAM virtual MFA
device. Each tag consists of a key name and an associated value. For
more information about tagging, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging
IAM resources</a> in the <em>IAM User Guide</em>.</p>
<p>If any one of the tags is invalid or if you exceed the allowed
maximum number of tags, then the entire request fails and the resource
is not created.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VirtualMFADevice = list(
        SerialNumber = "string",
        Base32StringSeed = raw,
        QRCodePNG = raw,
        User = list(
          Path = "string",
          UserName = "string",
          UserId = "string",
          Arn = "string",
          CreateDate = as.POSIXct(
            "2015-01-01"
          ),
          PasswordLastUsed = as.POSIXct(
            "2015-01-01"
          ),
          PermissionsBoundary = list(
            PermissionsBoundaryType = "PermissionsBoundaryPolicy",
            PermissionsBoundaryArn = "string"
          ),
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        ),
        EnableDate = as.POSIXct(
          "2015-01-01"
        ),
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$create_virtual_mfa_device(
      Path = "string",
      VirtualMFADeviceName = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
