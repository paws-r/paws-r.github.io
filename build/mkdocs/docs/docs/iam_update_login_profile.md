<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_update_login_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Changes the password for the specified IAM user

### Description

Changes the password for the specified IAM user. You can use the CLI,
the Amazon Web Services API, or the **Users** page in the IAM console to
change the password for any IAM user. Use `change_password` to change
your own password in the **My Security Credentials** page in the Amazon
Web Services Management Console.

For more information about modifying passwords, see [Managing
passwords](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_passwords_admin-change-user.html)
in the *IAM User Guide*.

### Usage

    iam_update_login_profile(UserName, Password, PasswordResetRequired)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_update_login_profile_:_UserName">UserName</code></td>
<td><p>[required] The name of the user whose password you want to
update.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="even">
<td><code id="iam_update_login_profile_:_Password">Password</code></td>
<td><p>The new password for the specified IAM user.</p>
<p>The <a href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>
used to validate this parameter is a string of characters consisting of
the following:</p>
<ul>
<li><p>Any printable ASCII character ranging from the space character
(<code>U+0020</code>) through the end of the ASCII character
range</p></li>
<li><p>The printable characters in the Basic Latin and Latin-1
Supplement character set (through <code
style="white-space: pre;">⁠U+00FF⁠</code>)</p></li>
<li><p>The special characters tab (<code>U+0009</code>), line feed
(<code style="white-space: pre;">⁠U+000A⁠</code>), and carriage return
(<code style="white-space: pre;">⁠U+000D⁠</code>)</p></li>
</ul>
<p>However, the format can be further restricted by the account
administrator by setting a password policy on the Amazon Web Services
account. For more information, see
<code>update_account_password_policy</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="iam_update_login_profile_:_PasswordResetRequired">PasswordResetRequired</code></td>
<td><p>Allows this new password to be used only once by requiring the
specified IAM user to set a new password on next sign-in.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_login_profile(
      UserName = "string",
      Password = "string",
      PasswordResetRequired = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # The following command creates or changes the password for the IAM user
    # named Bob.
    svc$update_login_profile(
      Password = "SomeKindOfPassword123!@#",
      UserName = "Bob"
    )

    ## End(Not run)
