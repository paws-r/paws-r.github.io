<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_modify_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Changes user password(s) and/or access string

### Description

Changes user password(s) and/or access string.

### Usage

    elasticache_modify_user(UserId, AccessString, AppendAccessString,
      Passwords, NoPasswordRequired, AuthenticationMode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="elasticache_modify_user_:_UserId">UserId</code></td>
<td><p>[required] The ID of the user.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_modify_user_:_AccessString">AccessString</code></td>
<td><p>Access permissions string used for this user.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_modify_user_:_AppendAccessString">AppendAccessString</code></td>
<td><p>Adds additional user permissions to the access string.</p></td>
</tr>
<tr class="even">
<td><code id="elasticache_modify_user_:_Passwords">Passwords</code></td>
<td><p>The passwords belonging to the user. You are allowed up to
two.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_modify_user_:_NoPasswordRequired">NoPasswordRequired</code></td>
<td><p>Indicates no password is required for the user.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_modify_user_:_AuthenticationMode">AuthenticationMode</code></td>
<td><p>Specifies how to authenticate the user.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UserId = "string",
      UserName = "string",
      Status = "string",
      Engine = "string",
      MinimumEngineVersion = "string",
      AccessString = "string",
      UserGroupIds = list(
        "string"
      ),
      Authentication = list(
        Type = "password"|"no-password"|"iam",
        PasswordCount = 123
      ),
      ARN = "string"
    )

### Request syntax

    svc$modify_user(
      UserId = "string",
      AccessString = "string",
      AppendAccessString = "string",
      Passwords = list(
        "string"
      ),
      NoPasswordRequired = TRUE|FALSE,
      AuthenticationMode = list(
        Type = "password"|"no-password-required"|"iam",
        Passwords = list(
          "string"
        )
      )
    )
