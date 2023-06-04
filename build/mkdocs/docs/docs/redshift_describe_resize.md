<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_describe_resize</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the last resize operation for the specified cluster

### Description

Returns information about the last resize operation for the specified
cluster. If no resize operation has ever been initiated for the
specified cluster, a `⁠HTTP 404⁠` error is returned. If a resize operation
was initiated and completed, the status of the resize remains as
`SUCCEEDED` until the next resize.

A resize operation can be requested using `modify_cluster` and
specifying a different number or type of nodes for the cluster.

### Usage

    redshift_describe_resize(ClusterIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_describe_resize_:_ClusterIdentifier">ClusterIdentifier</code></td>
<td><p>[required] The unique identifier of a cluster whose resize
progress you are requesting. This parameter is case-sensitive.</p>
<p>By default, resize operations for all clusters defined for an Amazon
Web Services account are returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TargetNodeType = "string",
      TargetNumberOfNodes = 123,
      TargetClusterType = "string",
      Status = "string",
      ImportTablesCompleted = list(
        "string"
      ),
      ImportTablesInProgress = list(
        "string"
      ),
      ImportTablesNotStarted = list(
        "string"
      ),
      AvgResizeRateInMegaBytesPerSecond = 123.0,
      TotalResizeDataInMegaBytes = 123,
      ProgressInMegaBytes = 123,
      ElapsedTimeInSeconds = 123,
      EstimatedTimeToCompletionInSeconds = 123,
      ResizeType = "string",
      Message = "string",
      TargetEncryptionType = "string",
      DataTransferProgressPercent = 123.0
    )

### Request syntax

    svc$describe_resize(
      ClusterIdentifier = "string"
    )
