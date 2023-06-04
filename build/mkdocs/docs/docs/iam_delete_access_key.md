<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_delete_access_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the access key pair associated with the specified IAM user

### Description

Deletes the access key pair associated with the specified IAM user.

If you do not specify a user name, IAM determines the user name
implicitly based on the Amazon Web Services access key ID signing the
request. This operation works for access keys under the Amazon Web
Services account. Consequently, you can use this operation to manage
Amazon Web Services account root user credentials even if the Amazon Web
Services account has no associated users.

### Usage

    iam_delete_access_key(UserName, AccessKeyId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_delete_access_key_:_UserName">UserName</code></td>
<td><p>The name of the user whose access key pair you want to
delete.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="even">
<td><code
id="iam_delete_access_key_:_AccessKeyId">AccessKeyId</code></td>
<td><p>[required] The access key ID for the access key ID and secret
access key you want to delete.</p>
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

    svc$delete_access_key(
      UserName = "string",
      AccessKeyId = "string"
    )

### Examples

    ## Not run: 
    # The following command deletes one access key (access key ID and secret
    # access key) assigned to the IAM user named Bob.
    svc$delete_access_key(
      AccessKeyId = "AKIDPMS9RO4H3FEXAMPLE",
      UserName = "Bob"
    )

    ## End(Not run)
