<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>memorydb_update_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Changes user password(s) and/or access string

### Description

Changes user password(s) and/or access string.

### Usage

    memorydb_update_user(UserName, AuthenticationMode, AccessString)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="memorydb_update_user_:_UserName">UserName</code></td>
<td><p>[required] The name of the user</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_update_user_:_AuthenticationMode">AuthenticationMode</code></td>
<td><p>Denotes the user's authentication properties, such as whether it
requires a password to authenticate.</p></td>
</tr>
<tr class="odd">
<td><code
id="memorydb_update_user_:_AccessString">AccessString</code></td>
<td><p>Access permissions string used for this user.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      User = list(
        Name = "string",
        Status = "string",
        AccessString = "string",
        ACLNames = list(
          "string"
        ),
        MinimumEngineVersion = "string",
        Authentication = list(
          Type = "password"|"no-password",
          PasswordCount = 123
        ),
        ARN = "string"
      )
    )

### Request syntax

    svc$update_user(
      UserName = "string",
      AuthenticationMode = list(
        Type = "password",
        Passwords = list(
          "string"
        )
      ),
      AccessString = "string"
    )
