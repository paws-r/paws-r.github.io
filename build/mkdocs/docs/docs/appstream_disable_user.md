<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_disable_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disables the specified user in the user pool

### Description

Disables the specified user in the user pool. Users can't sign in to
AppStream 2.0 until they are re-enabled. This action does not delete the
user.

### Usage

    appstream_disable_user(UserName, AuthenticationType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="appstream_disable_user_:_UserName">UserName</code></td>
<td><p>[required] The email address of the user.</p>
<p>Users' email addresses are case-sensitive.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_disable_user_:_AuthenticationType">AuthenticationType</code></td>
<td><p>[required] The authentication type for the user. You must specify
USERPOOL.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disable_user(
      UserName = "string",
      AuthenticationType = "API"|"SAML"|"USERPOOL"|"AWS_AD"
    )
