<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>memorydb_batch_update_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Apply the service update to a list of clusters supplied

### Description

Apply the service update to a list of clusters supplied. For more
information on service updates and applying them, see [Applying the
service
updates](https://docs.aws.amazon.com/memorydb/latest/devguide/managing-updates.html#applying-updates).

### Usage

    memorydb_batch_update_cluster(ClusterNames, ServiceUpdate)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="memorydb_batch_update_cluster_:_ClusterNames">ClusterNames</code></td>
<td><p>[required] The cluster names to apply the updates.</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_batch_update_cluster_:_ServiceUpdate">ServiceUpdate</code></td>
<td><p>The unique ID of the service update</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProcessedClusters = list(
        list(
          Name = "string",
          Description = "string",
          Status = "string",
          PendingUpdates = list(
            Resharding = list(
              SlotMigration = list(
                ProgressPercentage = 123.0
              )
            ),
            ACLs = list(
              ACLToApply = "string"
            ),
            ServiceUpdates = list(
              list(
                ServiceUpdateName = "string",
                Status = "available"|"in-progress"|"complete"|"scheduled"
              )
            )
          ),
          NumberOfShards = 123,
          Shards = list(
            list(
              Name = "string",
              Status = "string",
              Slots = "string",
              Nodes = list(
                list(
                  Name = "string",
                  Status = "string",
                  AvailabilityZone = "string",
                  CreateTime = as.POSIXct(
                    "2015-01-01"
                  ),
                  Endpoint = list(
                    Address = "string",
                    Port = 123
                  )
                )
              ),
              NumberOfNodes = 123
            )
          ),
          AvailabilityMode = "singleaz"|"multiaz",
          ClusterEndpoint = list(
            Address = "string",
            Port = 123
          ),
          NodeType = "string",
          EngineVersion = "string",
          EnginePatchVersion = "string",
          ParameterGroupName = "string",
          ParameterGroupStatus = "string",
          SecurityGroups = list(
            list(
              SecurityGroupId = "string",
              Status = "string"
            )
          ),
          SubnetGroupName = "string",
          TLSEnabled = TRUE|FALSE,
          KmsKeyId = "string",
          ARN = "string",
          SnsTopicArn = "string",
          SnsTopicStatus = "string",
          SnapshotRetentionLimit = 123,
          MaintenanceWindow = "string",
          SnapshotWindow = "string",
          ACLName = "string",
          AutoMinorVersionUpgrade = TRUE|FALSE,
          DataTiering = "true"|"false"
        )
      ),
      UnprocessedClusters = list(
        list(
          ClusterName = "string",
          ErrorType = "string",
          ErrorMessage = "string"
        )
      )
    )

### Request syntax

    svc$batch_update_cluster(
      ClusterNames = list(
        "string"
      ),
      ServiceUpdate = list(
        ServiceUpdateNameToApply = "string"
      )
    )
