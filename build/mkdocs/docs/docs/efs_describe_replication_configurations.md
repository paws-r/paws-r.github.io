<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>efs_describe_replication_configurations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the replication configuration for a specific file system

### Description

Retrieves the replication configuration for a specific file system. If a
file system is not specified, all of the replication configurations for
the Amazon Web Services account in an Amazon Web Services Region are
retrieved.

### Usage

    efs_describe_replication_configurations(FileSystemId, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="efs_describe_replication_configurations_:_FileSystemId">FileSystemId</code></td>
<td><p>You can retrieve the replication configuration for a specific
file system by providing its file system ID.</p></td>
</tr>
<tr class="even">
<td><code
id="efs_describe_replication_configurations_:_NextToken">NextToken</code></td>
<td><p><code>NextToken</code> is present if the response is paginated.
You can use <code>NextToken</code> in a subsequent request to fetch the
next page of output.</p></td>
</tr>
<tr class="odd">
<td><code
id="efs_describe_replication_configurations_:_MaxResults">MaxResults</code></td>
<td><p>(Optional) To limit the number of objects returned in a response,
you can specify the <code>MaxItems</code> parameter. The default value
is 100.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Replications = list(
        list(
          SourceFileSystemId = "string",
          SourceFileSystemRegion = "string",
          SourceFileSystemArn = "string",
          OriginalSourceFileSystemArn = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          Destinations = list(
            list(
              Status = "ENABLED"|"ENABLING"|"DELETING"|"ERROR"|"PAUSED"|"PAUSING",
              FileSystemId = "string",
              Region = "string",
              LastReplicatedTimestamp = as.POSIXct(
                "2015-01-01"
              )
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_replication_configurations(
      FileSystemId = "string",
      NextToken = "string",
      MaxResults = 123
    )
