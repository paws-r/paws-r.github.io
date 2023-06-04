<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_get_login_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the user name for the specified IAM user

### Description

Retrieves the user name for the specified IAM user. A login profile is
created when you create a password for the user to access the Amazon Web
Services Management Console. If the user does not exist or does not have
a password, the operation returns a 404 (`NoSuchEntity`) error.

If you create an IAM user with access to the console, the `CreateDate`
reflects the date you created the initial password for the user.

If you create an IAM user with programmatic access, and then later add a
password for the user to access the Amazon Web Services Management
Console, the `CreateDate` reflects the initial password creation date. A
user with programmatic access does not have a login profile unless you
create a password for the user to access the Amazon Web Services
Management Console.

### Usage

    iam_get_login_profile(UserName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_get_login_profile_:_UserName">UserName</code></td>
<td><p>[required] The name of the user whose login profile you want to
retrieve.</p>
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
      LoginProfile = list(
        UserName = "string",
        CreateDate = as.POSIXct(
          "2015-01-01"
        ),
        PasswordResetRequired = TRUE|FALSE
      )
    )

### Request syntax

    svc$get_login_profile(
      UserName = "string"
    )

### Examples

    ## Not run: 
    # The following command gets information about the password for the IAM
    # user named Anika.
    svc$get_login_profile(
      UserName = "Anika"
    )

    ## End(Not run)
