<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_create_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new user in the user pool

### Description

Creates a new user in the user pool.

### Usage

    appstream_create_user(UserName, MessageAction, FirstName, LastName,
      AuthenticationType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="appstream_create_user_:_UserName">UserName</code></td>
<td><p>[required] The email address of the user.</p>
<p>Users' email addresses are case-sensitive. During login, if they
specify an email address that doesn't use the same capitalization as the
email address specified when their user pool account was created, a
"user does not exist" error message displays.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_create_user_:_MessageAction">MessageAction</code></td>
<td><p>The action to take for the welcome email that is sent to a user
after the user is created in the user pool. If you specify SUPPRESS, no
email is sent. If you specify RESEND, do not specify the first name or
last name of the user. If the value is null, the email is sent.</p>
<p>The temporary password in the welcome email is valid for only 7 days.
If users don’t set their passwords within 7 days, you must send them a
new welcome email.</p></td>
</tr>
<tr class="odd">
<td><code id="appstream_create_user_:_FirstName">FirstName</code></td>
<td><p>The first name, or given name, of the user.</p></td>
</tr>
<tr class="even">
<td><code id="appstream_create_user_:_LastName">LastName</code></td>
<td><p>The last name, or surname, of the user.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_create_user_:_AuthenticationType">AuthenticationType</code></td>
<td><p>[required] The authentication type for the user. You must specify
USERPOOL.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_user(
      UserName = "string",
      MessageAction = "SUPPRESS"|"RESEND",
      FirstName = "string",
      LastName = "string",
      AuthenticationType = "API"|"SAML"|"USERPOOL"|"AWS_AD"
    )
