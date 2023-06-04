<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_batch_stop_update_action</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stop the service update

### Description

Stop the service update. For more information on service updates and
stopping them, see [Stopping Service
Updates](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/).

### Usage

    elasticache_batch_stop_update_action(ReplicationGroupIds,
      CacheClusterIds, ServiceUpdateName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_batch_stop_update_action_:_ReplicationGroupIds">ReplicationGroupIds</code></td>
<td><p>The replication group IDs</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_batch_stop_update_action_:_CacheClusterIds">CacheClusterIds</code></td>
<td><p>The cache cluster IDs</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_batch_stop_update_action_:_ServiceUpdateName">ServiceUpdateName</code></td>
<td><p>[required] The unique ID of the service update</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProcessedUpdateActions = list(
        list(
          ReplicationGroupId = "string",
          CacheClusterId = "string",
          ServiceUpdateName = "string",
          UpdateActionStatus = "not-applied"|"waiting-to-start"|"in-progress"|"stopping"|"stopped"|"complete"|"scheduling"|"scheduled"|"not-applicable"
        )
      ),
      UnprocessedUpdateActions = list(
        list(
          ReplicationGroupId = "string",
          CacheClusterId = "string",
          ServiceUpdateName = "string",
          ErrorType = "string",
          ErrorMessage = "string"
        )
      )
    )

### Request syntax

    svc$batch_stop_update_action(
      ReplicationGroupIds = list(
        "string"
      ),
      CacheClusterIds = list(
        "string"
      ),
      ServiceUpdateName = "string"
    )
