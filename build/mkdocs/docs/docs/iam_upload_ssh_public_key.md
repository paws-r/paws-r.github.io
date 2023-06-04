<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_upload_ssh_public_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Uploads an SSH public key and associates it with the specified IAM user

### Description

Uploads an SSH public key and associates it with the specified IAM user.

The SSH public key uploaded by this operation can be used only for
authenticating the associated IAM user to an CodeCommit repository. For
more information about using SSH keys to authenticate to an CodeCommit
repository, see [Set up CodeCommit for SSH
connections](https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up.html)
in the *CodeCommit User Guide*.

### Usage

    iam_upload_ssh_public_key(UserName, SSHPublicKeyBody)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_upload_ssh_public_key_:_UserName">UserName</code></td>
<td><p>[required] The name of the IAM user to associate the SSH public
key with.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="even">
<td><code
id="iam_upload_ssh_public_key_:_SSHPublicKeyBody">SSHPublicKeyBody</code></td>
<td><p>[required] The SSH public key. The public key must be encoded in
ssh-rsa format or PEM format. The minimum bit-length of the public key
is 2048 bits. For example, you can generate a 2048-bit key, and the
resulting PEM file is 1679 bytes long.</p>
<p>The <a href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>
used to validate this parameter is a string of characters consisting of
the following:</p>
<ul>
<li><p>Any printable ASCII character ranging from the space character
(<code>U+0020</code>) through the end of the ASCII character
range</p></li>
<li><p>The printable characters in the Basic Latin and Latin-1
Supplement character set (through <code
style="white-space: pre;">⁠U+00FF⁠</code>)</p></li>
<li><p>The special characters tab (<code>U+0009</code>), line feed
(<code style="white-space: pre;">⁠U+000A⁠</code>), and carriage return
(<code style="white-space: pre;">⁠U+000D⁠</code>)</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SSHPublicKey = list(
        UserName = "string",
        SSHPublicKeyId = "string",
        Fingerprint = "string",
        SSHPublicKeyBody = "string",
        Status = "Active"|"Inactive",
        UploadDate = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$upload_ssh_public_key(
      UserName = "string",
      SSHPublicKeyBody = "string"
    )
