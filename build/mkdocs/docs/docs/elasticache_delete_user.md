<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_delete_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## For Redis engine version 6

### Description

For Redis engine version 6.0 onwards: Deletes a user. The user will be
removed from all user groups and in turn removed from all replication
groups. For more information, see [Using Role Based Access Control
(RBAC)](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.RBAC.html).

### Usage

    elasticache_delete_user(UserId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="elasticache_delete_user_:_UserId">UserId</code></td>
<td><p>[required] The ID of the user.</p></td>
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

    svc$delete_user(
      UserId = "string"
    )
