<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_modify_user_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Changes the list of users that belong to the user group

### Description

Changes the list of users that belong to the user group.

### Usage

    elasticache_modify_user_group(UserGroupId, UserIdsToAdd,
      UserIdsToRemove)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_modify_user_group_:_UserGroupId">UserGroupId</code></td>
<td><p>[required] The ID of the user group.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_modify_user_group_:_UserIdsToAdd">UserIdsToAdd</code></td>
<td><p>The list of user IDs to add to the user group.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_modify_user_group_:_UserIdsToRemove">UserIdsToRemove</code></td>
<td><p>The list of user IDs to remove from the user group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UserGroupId = "string",
      Status = "string",
      Engine = "string",
      UserIds = list(
        "string"
      ),
      MinimumEngineVersion = "string",
      PendingChanges = list(
        UserIdsToRemove = list(
          "string"
        ),
        UserIdsToAdd = list(
          "string"
        )
      ),
      ReplicationGroups = list(
        "string"
      ),
      ARN = "string"
    )

### Request syntax

    svc$modify_user_group(
      UserGroupId = "string",
      UserIdsToAdd = list(
        "string"
      ),
      UserIdsToRemove = list(
        "string"
      )
    )
