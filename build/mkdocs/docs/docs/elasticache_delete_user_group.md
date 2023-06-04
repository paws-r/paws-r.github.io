<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_delete_user_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## For Redis engine version 6

### Description

For Redis engine version 6.0 onwards: Deletes a user group. The user
group must first be disassociated from the replication group before it
can be deleted. For more information, see [Using Role Based Access
Control
(RBAC)](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.RBAC.html).

### Usage

    elasticache_delete_user_group(UserGroupId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_delete_user_group_:_UserGroupId">UserGroupId</code></td>
<td><p>[required] The ID of the user group.</p></td>
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

    svc$delete_user_group(
      UserGroupId = "string"
    )
