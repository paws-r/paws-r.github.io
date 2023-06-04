<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_delete_login_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the password for the specified IAM user, For more information, see Managing passwords for IAM users

### Description

Deletes the password for the specified IAM user, For more information,
see [Managing passwords for IAM
users](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_passwords_admin-change-user.html).

You can use the CLI, the Amazon Web Services API, or the **Users** page
in the IAM console to delete a password for any IAM user. You can use
`change_password` to update, but not delete, your own password in the
**My Security Credentials** page in the Amazon Web Services Management
Console.

Deleting a user's password does not prevent a user from accessing Amazon
Web Services through the command line interface or the API. To prevent
all user access, you must also either make any access keys inactive or
delete them. For more information about making keys inactive or deleting
them, see `update_access_key` and `delete_access_key`.

### Usage

    iam_delete_login_profile(UserName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_delete_login_profile_:_UserName">UserName</code></td>
<td><p>[required] The name of the user whose password you want to
delete.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_login_profile(
      UserName = "string"
    )

### Examples

    ## Not run: 
    # The following command deletes the password for the IAM user named Bob.
    svc$delete_login_profile(
      UserName = "Bob"
    )

    ## End(Not run)
