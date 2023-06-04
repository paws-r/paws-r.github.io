<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_create_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## For Redis engine version 6

### Description

For Redis engine version 6.0 onwards: Creates a Redis user. For more
information, see [Using Role Based Access Control
(RBAC)](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.RBAC.html).

### Usage

    elasticache_create_user(UserId, UserName, Engine, Passwords,
      AccessString, NoPasswordRequired, Tags, AuthenticationMode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="elasticache_create_user_:_UserId">UserId</code></td>
<td><p>[required] The ID of the user.</p></td>
</tr>
<tr class="even">
<td><code id="elasticache_create_user_:_UserName">UserName</code></td>
<td><p>[required] The username of the user.</p></td>
</tr>
<tr class="odd">
<td><code id="elasticache_create_user_:_Engine">Engine</code></td>
<td><p>[required] The current supported value is Redis.</p></td>
</tr>
<tr class="even">
<td><code id="elasticache_create_user_:_Passwords">Passwords</code></td>
<td><p>Passwords used for this user. You can create up to two passwords
for each user.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_create_user_:_AccessString">AccessString</code></td>
<td><p>[required] Access permissions string used for this user.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_create_user_:_NoPasswordRequired">NoPasswordRequired</code></td>
<td><p>Indicates a password is not required for this user.</p></td>
</tr>
<tr class="odd">
<td><code id="elasticache_create_user_:_Tags">Tags</code></td>
<td><p>A list of tags to be added to this resource. A tag is a key-value
pair. A tag key must be accompanied by a tag value, although null is
accepted.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_create_user_:_AuthenticationMode">AuthenticationMode</code></td>
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

    svc$create_user(
      UserId = "string",
      UserName = "string",
      Engine = "string",
      Passwords = list(
        "string"
      ),
      AccessString = "string",
      NoPasswordRequired = TRUE|FALSE,
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      AuthenticationMode = list(
        Type = "password"|"no-password-required"|"iam",
        Passwords = list(
          "string"
        )
      )
    )
