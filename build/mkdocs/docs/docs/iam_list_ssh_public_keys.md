<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_list_ssh_public_keys</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the SSH public keys associated with the specified IAM user

### Description

Returns information about the SSH public keys associated with the
specified IAM user. If none exists, the operation returns an empty list.

The SSH public keys returned by this operation are used only for
authenticating the IAM user to an CodeCommit repository. For more
information about using SSH keys to authenticate to an CodeCommit
repository, see [Set up CodeCommit for SSH
connections](https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up.html)
in the *CodeCommit User Guide*.

Although each user is limited to a small number of keys, you can still
paginate the results using the `MaxItems` and `Marker` parameters.

### Usage

    iam_list_ssh_public_keys(UserName, Marker, MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_list_ssh_public_keys_:_UserName">UserName</code></td>
<td><p>The name of the IAM user to list SSH public keys for. If none is
specified, the <code>UserName</code> field is determined implicitly
based on the Amazon Web Services access key used to sign the
request.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="even">
<td><code id="iam_list_ssh_public_keys_:_Marker">Marker</code></td>
<td><p>Use this parameter only when paginating results and only after
you receive a response indicating that the results are truncated. Set it
to the value of the <code>Marker</code> element in the response that you
received to indicate where the next call should start.</p></td>
</tr>
<tr class="odd">
<td><code id="iam_list_ssh_public_keys_:_MaxItems">MaxItems</code></td>
<td><p>Use this only when paginating results to indicate the maximum
number of items you want in the response. If additional items exist
beyond the maximum you specify, the <code>IsTruncated</code> response
element is <code>true</code>.</p>
<p>If you do not include this parameter, the number of items defaults to
100. Note that IAM might return fewer results, even when there are more
results available. In that case, the <code>IsTruncated</code> response
element returns <code>true</code>, and <code>Marker</code> contains a
value to include in the subsequent call that tells the service where to
continue from.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SSHPublicKeys = list(
        list(
          UserName = "string",
          SSHPublicKeyId = "string",
          Status = "Active"|"Inactive",
          UploadDate = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      IsTruncated = TRUE|FALSE,
      Marker = "string"
    )

### Request syntax

    svc$list_ssh_public_keys(
      UserName = "string",
      Marker = "string",
      MaxItems = 123
    )
