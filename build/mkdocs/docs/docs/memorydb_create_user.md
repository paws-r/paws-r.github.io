<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>memorydb_create_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a MemoryDB user

### Description

Creates a MemoryDB user. For more information, see [Authenticating users
with Access Contol Lists
(ACLs)](https://docs.aws.amazon.com/memorydb/latest/devguide/clusters.acls.html).

### Usage

    memorydb_create_user(UserName, AuthenticationMode, AccessString, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="memorydb_create_user_:_UserName">UserName</code></td>
<td><p>[required] The name of the user. This value must be unique as it
also serves as the user identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_create_user_:_AuthenticationMode">AuthenticationMode</code></td>
<td><p>[required] Denotes the user's authentication properties, such as
whether it requires a password to authenticate.</p></td>
</tr>
<tr class="odd">
<td><code
id="memorydb_create_user_:_AccessString">AccessString</code></td>
<td><p>[required] Access permissions string used for this user.</p></td>
</tr>
<tr class="even">
<td><code id="memorydb_create_user_:_Tags">Tags</code></td>
<td><p>A list of tags to be added to this resource. A tag is a key-value
pair. A tag key must be accompanied by a tag value, although null is
accepted.</p></td>
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

    svc$create_user(
      UserName = "string",
      AuthenticationMode = list(
        Type = "password",
        Passwords = list(
          "string"
        )
      ),
      AccessString = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
