<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_delete_ssh_public_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified SSH public key

### Description

Deletes the specified SSH public key.

The SSH public key deleted by this operation is used only for
authenticating the associated IAM user to an CodeCommit repository. For
more information about using SSH keys to authenticate to an CodeCommit
repository, see [Set up CodeCommit for SSH
connections](https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up.html)
in the *CodeCommit User Guide*.

### Usage

    iam_delete_ssh_public_key(UserName, SSHPublicKeyId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_delete_ssh_public_key_:_UserName">UserName</code></td>
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
id="iam_delete_ssh_public_key_:_SSHPublicKeyId">SSHPublicKeyId</code></td>
<td><p>[required] The unique identifier for the SSH public key.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters that can consist of any upper or lowercased letter or
digit.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_ssh_public_key(
      UserName = "string",
      SSHPublicKeyId = "string"
    )
