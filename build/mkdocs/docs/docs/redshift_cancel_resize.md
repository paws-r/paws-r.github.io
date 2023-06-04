<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_cancel_resize</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels a resize operation for a cluster

### Description

Cancels a resize operation for a cluster.

### Usage

    redshift_cancel_resize(ClusterIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_cancel_resize_:_ClusterIdentifier">ClusterIdentifier</code></td>
<td><p>[required] The unique identifier for the cluster that you want to
cancel a resize operation for.</p></td>
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

    svc$cancel_resize(
      ClusterIdentifier = "string"
    )
