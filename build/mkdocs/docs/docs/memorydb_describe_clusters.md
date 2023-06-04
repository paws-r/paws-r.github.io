<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>memorydb_describe_clusters</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about all provisioned clusters if no cluster identifier is specified, or about a specific cluster if a cluster name is supplied

### Description

Returns information about all provisioned clusters if no cluster
identifier is specified, or about a specific cluster if a cluster name
is supplied.

### Usage

    memorydb_describe_clusters(ClusterName, MaxResults, NextToken,
      ShowShardDetails)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="memorydb_describe_clusters_:_ClusterName">ClusterName</code></td>
<td><p>The name of the cluster</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_describe_clusters_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified MaxResults value, a token is included
in the response so that the remaining results can be retrieved.</p></td>
</tr>
<tr class="odd">
<td><code
id="memorydb_describe_clusters_:_NextToken">NextToken</code></td>
<td><p>An optional argument to pass in case the total number of records
exceeds the value of MaxResults. If nextToken is returned, there are
more results available. The value of nextToken is a unique pagination
token for each page. Make the call again using the returned token to
retrieve the next page. Keep all other arguments unchanged.</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_describe_clusters_:_ShowShardDetails">ShowShardDetails</code></td>
<td><p>An optional flag that can be included in the request to retrieve
information about the individual shard(s).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      Clusters = list(
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
      )
    )

### Request syntax

    svc$describe_clusters(
      ClusterName = "string",
      MaxResults = 123,
      NextToken = "string",
      ShowShardDetails = TRUE|FALSE
    )
