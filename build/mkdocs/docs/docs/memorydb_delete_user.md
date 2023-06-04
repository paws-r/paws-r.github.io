<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>memorydb_delete_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a user

### Description

Deletes a user. The user will be removed from all ACLs and in turn
removed from all clusters.

### Usage

    memorydb_delete_user(UserName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="memorydb_delete_user_:_UserName">UserName</code></td>
<td><p>[required] The name of the user to delete</p></td>
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

    svc$delete_user(
      UserName = "string"
    )
