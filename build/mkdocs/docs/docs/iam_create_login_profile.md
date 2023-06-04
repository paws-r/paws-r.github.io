<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_create_login_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a password for the specified IAM user

### Description

Creates a password for the specified IAM user. A password allows an IAM
user to access Amazon Web Services services through the Amazon Web
Services Management Console.

You can use the CLI, the Amazon Web Services API, or the **Users** page
in the IAM console to create a password for any IAM user. Use
`change_password` to update your own existing password in the **My
Security Credentials** page in the Amazon Web Services Management
Console.

For more information about managing passwords, see [Managing
passwords](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_passwords_admin-change-user.html)
in the *IAM User Guide*.

### Usage

    iam_create_login_profile(UserName, Password, PasswordResetRequired)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_create_login_profile_:_UserName">UserName</code></td>
<td><p>[required] The name of the IAM user to create a password for. The
user must already exist.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="even">
<td><code id="iam_create_login_profile_:_Password">Password</code></td>
<td><p>[required] The new password for the user.</p>
<p>The <a href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>
that is used to validate this parameter is a string of characters. That
string can include almost any printable ASCII character from the space
(<code>U+0020</code>) through the end of the ASCII character range
(<code style="white-space: pre;">⁠U+00FF⁠</code>). You can also include
the tab (<code>U+0009</code>), line feed (<code
style="white-space: pre;">⁠U+000A⁠</code>), and carriage return (<code
style="white-space: pre;">⁠U+000D⁠</code>) characters. Any of these
characters are valid in a password. However, many tools, such as the
Amazon Web Services Management Console, might restrict the ability to
type certain characters because they have special meaning within that
tool.</p></td>
</tr>
<tr class="odd">
<td><code
id="iam_create_login_profile_:_PasswordResetRequired">PasswordResetRequired</code></td>
<td><p>Specifies whether the user is required to set a new password on
next sign-in.</p></td>
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

    svc$create_login_profile(
      UserName = "string",
      Password = "string",
      PasswordResetRequired = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # The following command changes IAM user Bob's password and sets the flag
    # that required Bob to change the password the next time he signs in.
    svc$create_login_profile(
      Password = "h]6EszR}vJ*m",
      PasswordResetRequired = TRUE,
      UserName = "Bob"
    )

    ## End(Not run)
