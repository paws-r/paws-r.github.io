<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_delete_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a user from the user pool

### Description

Deletes a user from the user pool.

### Usage

    appstream_delete_user(UserName, AuthenticationType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="appstream_delete_user_:_UserName">UserName</code></td>
<td><p>[required] The email address of the user.</p>
<p>Users' email addresses are case-sensitive.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_delete_user_:_AuthenticationType">AuthenticationType</code></td>
<td><p>[required] The authentication type for the user. You must specify
USERPOOL.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_user(
      UserName = "string",
      AuthenticationType = "API"|"SAML"|"USERPOOL"|"AWS_AD"
    )
