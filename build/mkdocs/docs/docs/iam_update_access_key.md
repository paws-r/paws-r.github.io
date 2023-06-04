<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_update_access_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Changes the status of the specified access key from Active to Inactive, or vice versa

### Description

Changes the status of the specified access key from Active to Inactive,
or vice versa. This operation can be used to disable a user's key as
part of a key rotation workflow.

If the `UserName` is not specified, the user name is determined
implicitly based on the Amazon Web Services access key ID used to sign
the request. If a temporary access key is used, then `UserName` is
required. If a long-term key is assigned to the user, then `UserName` is
not required. This operation works for access keys under the Amazon Web
Services account. Consequently, you can use this operation to manage
Amazon Web Services account root user credentials even if the Amazon Web
Services account has no associated users.

For information about rotating keys, see [Managing keys and
certificates](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_access-keys.html)
in the *IAM User Guide*.

### Usage

    iam_update_access_key(UserName, AccessKeyId, Status)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_update_access_key_:_UserName">UserName</code></td>
<td><p>The name of the user whose key you want to update.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="even">
<td><code
id="iam_update_access_key_:_AccessKeyId">AccessKeyId</code></td>
<td><p>[required] The access key ID of the secret access key you want to
update.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters that can consist of any upper or lowercased letter or
digit.</p></td>
</tr>
<tr class="odd">
<td><code id="iam_update_access_key_:_Status">Status</code></td>
<td><p>[required] The status you want to assign to the secret access
key. <code>Active</code> means that the key can be used for programmatic
calls to Amazon Web Services, while <code>Inactive</code> means that the
key cannot be used.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_access_key(
      UserName = "string",
      AccessKeyId = "string",
      Status = "Active"|"Inactive"
    )

### Examples

    ## Not run: 
    # The following command deactivates the specified access key (access key
    # ID and secret access key) for the IAM user named Bob.
    svc$update_access_key(
      AccessKeyId = "AKIAIOSFODNN7EXAMPLE",
      Status = "Inactive",
      UserName = "Bob"
    )

    ## End(Not run)
