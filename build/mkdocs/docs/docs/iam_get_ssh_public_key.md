<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_get_ssh_public_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the specified SSH public key, including metadata about the key

### Description

Retrieves the specified SSH public key, including metadata about the
key.

The SSH public key retrieved by this operation is used only for
authenticating the associated IAM user to an CodeCommit repository. For
more information about using SSH keys to authenticate to an CodeCommit
repository, see [Set up CodeCommit for SSH
connections](https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up.html)
in the *CodeCommit User Guide*.

### Usage

    iam_get_ssh_public_key(UserName, SSHPublicKeyId, Encoding)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_get_ssh_public_key_:_UserName">UserName</code></td>
<td><p>[required] The name of the IAM user associated with the SSH
public key.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="even">
<td><code
id="iam_get_ssh_public_key_:_SSHPublicKeyId">SSHPublicKeyId</code></td>
<td><p>[required] The unique identifier for the SSH public key.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters that can consist of any upper or lowercased letter or
digit.</p></td>
</tr>
<tr class="odd">
<td><code id="iam_get_ssh_public_key_:_Encoding">Encoding</code></td>
<td><p>[required] Specifies the public key encoding format to use in the
response. To retrieve the public key in ssh-rsa format, use
<code>SSH</code>. To retrieve the public key in PEM format, use
<code>PEM</code>.</p></td>
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

    svc$get_ssh_public_key(
      UserName = "string",
      SSHPublicKeyId = "string",
      Encoding = "SSH"|"PEM"
    )
