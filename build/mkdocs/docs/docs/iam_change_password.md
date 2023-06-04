<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_change_password</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Changes the password of the IAM user who is calling this operation

### Description

Changes the password of the IAM user who is calling this operation. This
operation can be performed using the CLI, the Amazon Web Services API,
or the **My Security Credentials** page in the Amazon Web Services
Management Console. The Amazon Web Services account root user password
is not affected by this operation.

Use `update_login_profile` to use the CLI, the Amazon Web Services API,
or the **Users** page in the IAM console to change the password for any
IAM user. For more information about modifying passwords, see [Managing
passwords](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_passwords_admin-change-user.html)
in the *IAM User Guide*.

### Usage

    iam_change_password(OldPassword, NewPassword)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_change_password_:_OldPassword">OldPassword</code></td>
<td><p>[required] The IAM user's current password.</p></td>
</tr>
<tr class="even">
<td><code id="iam_change_password_:_NewPassword">NewPassword</code></td>
<td><p>[required] The new password. The new password must conform to the
Amazon Web Services account's password policy, if one exists.</p>
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
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$change_password(
      OldPassword = "string",
      NewPassword = "string"
    )

### Examples

    ## Not run: 
    # The following command changes the password for the current IAM user.
    svc$change_password(
      NewPassword = "]35d/{pB9Fo9wJ",
      OldPassword = "3s0K_;xh4~8XXI"
    )

    ## End(Not run)
