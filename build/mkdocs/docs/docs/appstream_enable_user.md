<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_enable_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables a user in the user pool

### Description

Enables a user in the user pool. After being enabled, users can sign in
to AppStream 2.0 and open applications from the stacks to which they are
assigned.

### Usage

    appstream_enable_user(UserName, AuthenticationType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="appstream_enable_user_:_UserName">UserName</code></td>
<td><p>[required] The email address of the user.</p>
<p>Users' email addresses are case-sensitive. During login, if they
specify an email address that doesn't use the same capitalization as the
email address specified when their user pool account was created, a
"user does not exist" error message displays.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_enable_user_:_AuthenticationType">AuthenticationType</code></td>
<td><p>[required] The authentication type for the user. You must specify
USERPOOL.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$enable_user(
      UserName = "string",
      AuthenticationType = "API"|"SAML"|"USERPOOL"|"AWS_AD"
    )
