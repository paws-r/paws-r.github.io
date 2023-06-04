<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_update_ssh_public_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the status of an IAM user's SSH public key to active or inactive

### Description

Sets the status of an IAM user's SSH public key to active or inactive.
SSH public keys that are inactive cannot be used for authentication.
This operation can be used to disable a user's SSH public key as part of
a key rotation work flow.

The SSH public key affected by this operation is used only for
authenticating the associated IAM user to an CodeCommit repository. For
more information about using SSH keys to authenticate to an CodeCommit
repository, see [Set up CodeCommit for SSH
connections](https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up.html)
in the *CodeCommit User Guide*.

### Usage

    iam_update_ssh_public_key(UserName, SSHPublicKeyId, Status)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_update_ssh_public_key_:_UserName">UserName</code></td>
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
id="iam_update_ssh_public_key_:_SSHPublicKeyId">SSHPublicKeyId</code></td>
<td><p>[required] The unique identifier for the SSH public key.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters that can consist of any upper or lowercased letter or
digit.</p></td>
</tr>
<tr class="odd">
<td><code id="iam_update_ssh_public_key_:_Status">Status</code></td>
<td><p>[required] The status to assign to the SSH public key.
<code>Active</code> means that the key can be used for authentication
with an CodeCommit repository. <code>Inactive</code> means that the key
cannot be used.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_ssh_public_key(
      UserName = "string",
      SSHPublicKeyId = "string",
      Status = "Active"|"Inactive"
    )
