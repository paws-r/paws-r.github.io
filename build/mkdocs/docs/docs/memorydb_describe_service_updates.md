<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>memorydb_describe_service_updates</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns details of the service updates

### Description

Returns details of the service updates

### Usage

    memorydb_describe_service_updates(ServiceUpdateName, ClusterNames,
      Status, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="memorydb_describe_service_updates_:_ServiceUpdateName">ServiceUpdateName</code></td>
<td><p>The unique ID of the service update to describe.</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_describe_service_updates_:_ClusterNames">ClusterNames</code></td>
<td><p>The list of cluster names to identify service updates to
apply</p></td>
</tr>
<tr class="odd">
<td><code
id="memorydb_describe_service_updates_:_Status">Status</code></td>
<td><p>The status(es) of the service updates to filter on</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_describe_service_updates_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified MaxResults value, a token is included
in the response so that the remaining results can be retrieved.</p></td>
</tr>
<tr class="odd">
<td><code
id="memorydb_describe_service_updates_:_NextToken">NextToken</code></td>
<td><p>An optional argument to pass in case the total number of records
exceeds the value of MaxResults. If nextToken is returned, there are
more results available. The value of nextToken is a unique pagination
token for each page. Make the call again using the returned token to
retrieve the next page. Keep all other arguments unchanged.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      ServiceUpdates = list(
        list(
          ClusterName = "string",
          ServiceUpdateName = "string",
          ReleaseDate = as.POSIXct(
            "2015-01-01"
          ),
          Description = "string",
          Status = "available"|"in-progress"|"complete"|"scheduled",
          Type = "security-update",
          NodesUpdated = "string",
          AutoUpdateStartDate = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$describe_service_updates(
      ServiceUpdateName = "string",
      ClusterNames = list(
        "string"
      ),
      Status = list(
        "available"|"in-progress"|"complete"|"scheduled"
      ),
      MaxResults = 123,
      NextToken = "string"
    )
