<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_describe_user_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of user groups

### Description

Returns a list of user groups.

### Usage

    elasticache_describe_user_groups(UserGroupId, MaxRecords, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_describe_user_groups_:_UserGroupId">UserGroupId</code></td>
<td><p>The ID of the user group.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_describe_user_groups_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified MaxRecords value, a marker is included
in the response so that the remaining results can be retrieved.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_describe_user_groups_:_Marker">Marker</code></td>
<td><p>An optional marker returned from a prior request. Use this marker
for pagination of results from this operation. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by MaxRecords. \&gt;</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UserGroups = list(
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
      ),
      Marker = "string"
    )

### Request syntax

    svc$describe_user_groups(
      UserGroupId = "string",
      MaxRecords = 123,
      Marker = "string"
    )
