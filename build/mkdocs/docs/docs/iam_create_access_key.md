<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_create_access_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new Amazon Web Services secret access key and corresponding Amazon Web Services access key ID for the specified user

### Description

Creates a new Amazon Web Services secret access key and corresponding
Amazon Web Services access key ID for the specified user. The default
status for new keys is `Active`.

If you do not specify a user name, IAM determines the user name
implicitly based on the Amazon Web Services access key ID signing the
request. This operation works for access keys under the Amazon Web
Services account. Consequently, you can use this operation to manage
Amazon Web Services account root user credentials. This is true even if
the Amazon Web Services account has no associated users.

For information about quotas on the number of keys you can create, see
[IAM and STS
quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html)
in the *IAM User Guide*.

To ensure the security of your Amazon Web Services account, the secret
access key is accessible only during key and user creation. You must
save the key (for example, in a text file) if you want to be able to
access it again. If a secret key is lost, you can delete the access keys
for the associated user and then create new keys.

### Usage

    iam_create_access_key(UserName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_create_access_key_:_UserName">UserName</code></td>
<td><p>The name of the IAM user that the new key will belong to.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AccessKey = list(
        UserName = "string",
        AccessKeyId = "string",
        Status = "Active"|"Inactive",
        SecretAccessKey = "string",
        CreateDate = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$create_access_key(
      UserName = "string"
    )

### Examples

    ## Not run: 
    # The following command creates an access key (access key ID and secret
    # access key) for the IAM user named Bob.
    svc$create_access_key(
      UserName = "Bob"
    )

    ## End(Not run)
