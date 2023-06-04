<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>memorydb_describe_snapshots</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about cluster snapshots

### Description

Returns information about cluster snapshots. By default,
DescribeSnapshots lists all of your snapshots; it can optionally
describe a single snapshot, or just the snapshots associated with a
particular cluster.

### Usage

    memorydb_describe_snapshots(ClusterName, SnapshotName, Source,
      NextToken, MaxResults, ShowDetail)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="memorydb_describe_snapshots_:_ClusterName">ClusterName</code></td>
<td><p>A user-supplied cluster identifier. If this parameter is
specified, only snapshots associated with that specific cluster are
described.</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_describe_snapshots_:_SnapshotName">SnapshotName</code></td>
<td><p>A user-supplied name of the snapshot. If this parameter is
specified, only this named snapshot is described.</p></td>
</tr>
<tr class="odd">
<td><code id="memorydb_describe_snapshots_:_Source">Source</code></td>
<td><p>If set to system, the output shows snapshots that were
automatically created by MemoryDB. If set to user the output shows
snapshots that were manually created. If omitted, the output shows both
automatically and manually created snapshots.</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_describe_snapshots_:_NextToken">NextToken</code></td>
<td><p>An optional argument to pass in case the total number of records
exceeds the value of MaxResults. If nextToken is returned, there are
more results available. The value of nextToken is a unique pagination
token for each page. Make the call again using the returned token to
retrieve the next page. Keep all other arguments unchanged.</p></td>
</tr>
<tr class="odd">
<td><code
id="memorydb_describe_snapshots_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified MaxResults value, a token is included
in the response so that the remaining results can be retrieved.</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_describe_snapshots_:_ShowDetail">ShowDetail</code></td>
<td><p>A Boolean value which if true, the shard configuration is
included in the snapshot description.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      Snapshots = list(
        list(
          Name = "string",
          Status = "string",
          Source = "string",
          KmsKeyId = "string",
          ARN = "string",
          ClusterConfiguration = list(
            Name = "string",
            Description = "string",
            NodeType = "string",
            EngineVersion = "string",
            MaintenanceWindow = "string",
            TopicArn = "string",
            Port = 123,
            ParameterGroupName = "string",
            SubnetGroupName = "string",
            VpcId = "string",
            SnapshotRetentionLimit = 123,
            SnapshotWindow = "string",
            NumShards = 123,
            Shards = list(
              list(
                Name = "string",
                Configuration = list(
                  Slots = "string",
                  ReplicaCount = 123
                ),
                Size = "string",
                SnapshotCreationTime = as.POSIXct(
                  "2015-01-01"
                )
              )
            )
          ),
          DataTiering = "true"|"false"
        )
      )
    )

### Request syntax

    svc$describe_snapshots(
      ClusterName = "string",
      SnapshotName = "string",
      Source = "string",
      NextToken = "string",
      MaxResults = 123,
      ShowDetail = TRUE|FALSE
    )
