<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_create_user_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## For Redis engine version 6

### Description

For Redis engine version 6.0 onwards: Creates a Redis user group. For
more information, see [Using Role Based Access Control
(RBAC)](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.RBAC.html)

### Usage

    elasticache_create_user_group(UserGroupId, Engine, UserIds, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_create_user_group_:_UserGroupId">UserGroupId</code></td>
<td><p>[required] The ID of the user group.</p></td>
</tr>
<tr class="even">
<td><code id="elasticache_create_user_group_:_Engine">Engine</code></td>
<td><p>[required] The current supported value is Redis.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_create_user_group_:_UserIds">UserIds</code></td>
<td><p>The list of user IDs that belong to the user group.</p></td>
</tr>
<tr class="even">
<td><code id="elasticache_create_user_group_:_Tags">Tags</code></td>
<td><p>A list of tags to be added to this resource. A tag is a key-value
pair. A tag key must be accompanied by a tag value, although null is
accepted.</p></td>
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

    svc$create_user_group(
      UserGroupId = "string",
      Engine = "string",
      UserIds = list(
        "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
